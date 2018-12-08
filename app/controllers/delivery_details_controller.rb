class DeliveryDetailsController < ApplicationController
  before_action :set_deliverydetail, only: [:show,:show_del, :edit, :edit_del, :update, :destroy]
  before_action :search_modal, only: [:new,:create,:edit,:edit_del]
  respond_to :html

  def new
    @detail = DeliveryDetail.new
    @sheet_type = params[:sheet_type]
    respond_with(@detail,@sheet_type)
  end

  def edit_del
  end

  def edit
  end

  def create
  	@detail = DeliveryDetail.new(deliverydetail_params)
    @detail.delivery_id = params[:delivery_id]
    @detail.sheet_type = params[:sheet_type]
    @sheet_type = params[:sheet_type]
    if @detail.save
      redirect_to "/deliveries/#{@detail.delivery_id}/", notice: '依頼書を作成しました。'
    else
      render :new
      #redirect_to "/deliveries/#{@detail.delivery_id}/delivery_details/new?sheet_type=#{params[:sheet_type]}"
    end 
  end

  def update
    @detail.update(deliverydetail_params)
    redirect_to "/deliveries/#{@detail.delivery_id}/"
  end

  def destroy
    @detail.destroy
    redirect_to "/deliveries/#{@detail.delivery_id}/"
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.pdf do
        # 詳細画面のHTMLを取得
        html = render_to_string template: "delivery_details/show"

        # PDFKitを作成
        pdf = PDFKit.new(html, encoding: "UTF-8")

        ### 追加箇所 開始 ###
        # スタイルシートの設定
        pdf.stylesheets << "#{Rails.root}/app/assets/stylesheets/common.css.scss"
        ### 追加箇所 終了 ###

        # 画面にPDFを表示する
        # to_pdfメソッドでPDFファイルに変換する
        # 他には、to_fileメソッドでPDFファイルを作成できる
        # disposition: "inline" によりPDFはダウンロードではなく画面に表示される
        send_data pdf.to_pdf,
          filename:    "#{@detail.id}.pdf",
          type:        "application/pdf",
          disposition: "inline"
      end
    end
  end 
  private
    def set_deliverydetail
      @detail = DeliveryDetail.find(params[:id])
    end

    def search_modal
      @transports = Transport.search(params[:q])
      @transport_result = @transports.result(distinct: true)

      @hotels = Hotel.search(params[:q])
      @hotel_result = @hotels.result(distinct: true)

      @arrivalhotels = Hotel.search(params[:q])
      @arrivalhotel_result = @arrivalhotels.result(distinct: true)
    end

    def deliverydetail_params
      params.require(:delivery_detail).permit(
      	:delivery_id,
        :sheet_type,
        :ship_date,
        :cargo_date,
        :teachers,
        :students,
        :ship_hotel_id,
        :arrival_hotel_id,
        :cargo_hotel_id,
        :cargo_datetime,
        :cardboard_no,
        :vinyl_no,
        :payment_no,
        :cash_on_no,
        :bringon_time,
        :payment_price,
        :cash_on_price,
        :all_used,
        :remark,
        :transport_id,
        :partner_staff,
        :arrival_datetime,
        :arrival_time,
        :cargo_time_from,
        :cargo_time_to,
        :payment_price_used,
        :cash_on_price_used,
        :track_used,
        :fly_used,
        :jr_used,
        :post_used,
        :felly_used,
        :travel_staff,
        :travel_staff_tel
      )

    end
end

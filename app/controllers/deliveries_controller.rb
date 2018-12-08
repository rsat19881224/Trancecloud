class DeliveriesController < ApplicationController
  before_action :set_delivery, only: [:show, :edit, :update, :destroy]
  before_action :search_modal, only: [:new, :create, :edit, :search]
  respond_to :html

  def index
    #@deliveries = Delivery.all
    #respond_with(@deliveries)
  end

  def search
    @q        = Delivery.search(params[:q])
    @deliveries = @q.result(distinct: true)
    @deliveries = @deliveries.page(params[:page]).per(10)
  end

  def search_travel
    @q        = Travel.search(params[:q])
    @travel_result = @q.result(distinct: true)
  end

  def search_partner
    @q        = Partner.search(params[:q])
    @partner_result = @q.result(distinct: true)
  end

  def search_school
    @q        = School.search(params[:q])
    @school_result = @q.result(distinct: true)
  end
  
  def search_transport
    @q        = Transport.search(params[:q])
    @transport_result = @q.result(distinct: true)
  end

  def search_hotel
    @q        = Hotel.search(params[:q])
    @hotel_result = @q.result(distinct: true)
  end

  def search_arrivalhotel
    @q        = Hotel.search(params[:q])
    @arrivalhotel_result = @q.result(distinct: true)
  end

  def show
    @q = DeliveryDetail.search(delivery_id_eq: params[:id])
    @details = @q.result(distinct: true)
    respond_with(@delivery,@details)
  end

  def new
    @delivery = Delivery.new
    respond_with(@delivery)
  end

  def edit
    
  end

  def create
    @delivery = Delivery.new(delivery_params)
    @delivery.save
    respond_with(@delivery)
  end

  def update
    @delivery.update(delivery_params)
    respond_with(@delivery)
  end

  def destroy
    @delivery.destroy
    redirect_to :action => 'search'
  end

  private
    def set_delivery
      @delivery = Delivery.find(params[:id])
    end

    def search_modal
      @travels = Travel.search(params[:q])
      @travel_result = @travels.result(distinct: true)
      
      @schools = School.search(params[:q])
      @school_result = @schools.result(distinct: true)

      @partners = Partner.search(params[:q])
      @partner_result = @partners.result(distinct: true)

      @transports = Transport.search(params[:q])
      @transport_result = @transports.result(distinct: true)

      @hotels = Hotel.search(params[:q])
      @hotel_result = @hotels.result(distinct: true)

      @arrivalhotels = Hotel.search(params[:q])
      @arrivalhotel_result = @arrivalhotels.result(distinct: true)
    end
    
    def delivery_params
      params.require(:delivery).permit( :cargo_date, :travel_id, :school_id, :partner_id, :entry_date)
      #params[:delivery]
    end
end

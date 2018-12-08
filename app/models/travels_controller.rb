class TravelsController < ApplicationController
  def index
    @q = Travel.joins(:trader).where(traders: {company_id: current_user.company_id}).search()
    @travels = @q.result(distinct: true)
    if modal_params.present?
      @modalid = modal_params[:modalid]
      @institute = modal_params[:institute]
    end
    respond_to do |format|
      format.js
      format.html
    end
  end

  def search
    @q = TraderBankAccount.joins(:trader).where(traders: {company_id: current_user.company_id}).search(search_params)
    @trader_bank_accounts = @q.result(distinct: true)
    if modal_params.present?
      @modalid = modal_params[:modalid]
      @institute = modal_params[:institute]
    end

    respond_to do |format|
      format.js  
    end
  end

private
  def search_params
    submit_params = params.require(:q).permit(
      :code_start,
      :bank_name_cont,
      :branch_name_cont,
      :jemco_user_number_start,
      :densai_user_number_start,
      :trader_code_start,
      :trader_name1_cont
    )
  end
  def modal_params
    params.permit(:modalid, :institute)
  end  
end
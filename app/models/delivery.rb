class Delivery < ActiveRecord::Base
	acts_as_paranoid
	belongs_to :travel
	belongs_to :school
	belongs_to :partner
	has_many :delivery_detail
    
  validates :cargo_date, :travel_id, :school_id, :partner_id, :entry_date,:presence => {:message =>'は必須です。'}
  validates :travel_id, :school_id, :partner_id,numericality: { only_integer: true, message: 'は半角数値で入力してください。' }, allow_nil: true
end

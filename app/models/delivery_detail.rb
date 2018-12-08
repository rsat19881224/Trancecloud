class DeliveryDetail < ActiveRecord::Base
	belongs_to :delivery
	belongs_to :hotel
	belongs_to :transport

	validates :sheet_type, :transport_id, :teachers, :students, :presence => {:message =>'は必須です。'}
	validates :teachers, :students ,numericality: { only_integer: true , message: 'は半角数値で入力してください。'}, allow_nil: true
	validates :ship_hotel_id, :arrival_hotel_id, :cargo_hotel_id, :cardboard_no, :vinyl_no, :payment_no, :cash_on_no, :cash_on_price,numericality: { only_integer: true , message: 'は半角数値で入力してください。'}, allow_nil: true
	#validates :arrival_time,:cargo_time_from, :cargo_time_to, :bringon_time, format: { with: /\A([0-1][0-9]|[2][0-3]):[0-5][0-9]\z/ , message: 'は半角英数値かつ所定の形式で入力してください。'}, allow_nil: true
	
end

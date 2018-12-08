class CreateDeliveryDetails < ActiveRecord::Migration
  def change
    create_table :delivery_details do |t|
			t.integer :delivery_id	#親ID
			t.string :sheet_type #依頼書区分
			t.string :partner_staff #送付元担当者
			t.integer :transport_id #運送会社情報
			t.date :ship_date #出荷日
			t.date :cargo_date #集荷日
			t.integer :teachers #先生人数
			t.integer :students #生徒人数
			t.integer :ship_hotel_id #発送元情報
			t.integer :arrival_hotel_id #到着先情報
			t.date :arrival_datetime #到着日 [charter]
			t.time :arrival_time #到着時間 [charter]
			t.integer :cargo_hotel_id #集荷先情報
			t.date :cargo_datetime #集荷日
			t.time :cargo_time_from #集荷時間 from
			t.time :cargo_time_to #集荷時間 to
			t.integer :cardboard_no #ダンボール数
			t.integer :vinyl_no #ビニールカバー数
			t.integer :payment_no #伝票元払い数
			t.integer :cash_on_no #伝票着払い数
			t.time :bringon_time #資材搬入時間
			t.integer :payment_price #現地元払い金額
			t.boolean :payment_price_used, default: false, null: false 
			t.integer :cash_on_price #現地着払い金額
			t.boolean :cash_on_price_used, default: false, null: false 
			t.boolean :all_used, default: false, null: false #全員出荷
			t.boolean :track_used, default: false, null: false #トラック
			t.boolean :fly_used, default: false, null: false #航空輸送
			t.boolean :jr_used, default: false, null: false #JRコンテナ
			t.boolean :post_used, default: false, null: false #郵パック
			t.boolean :felly_used, default: false, null: false #フェリー
			t.string :travel_staff #旅行代理店担当者
			t.string :travel_staff_tel #旅行代理店担当者TEL
			t.string :remark #備考
      t.timestamps
      t.datetime :deleted_at
    end
  end
end

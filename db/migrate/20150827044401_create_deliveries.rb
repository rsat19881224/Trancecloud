class CreateDeliveries < ActiveRecord::Migration
  def change
    create_table :deliveries do |t|
      t.date :cargo_date, :null => false #出荷日集荷日
      t.integer :travel_id, :null => false #旅行代理店id
      t.integer :school_id, :null => false #依頼団体(学校)id
      t.integer :partner_id, :null => false #送付元id
      t.date :entry_date, :null => false #申込日
      t.timestamps
      t.datetime :deleted_at
    end
  end
end

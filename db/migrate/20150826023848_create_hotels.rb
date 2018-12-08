class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name, :null => false			#ホテル名
      t.string :kana			#ホテル名カナ
      t.string :office #支店
      t.string :postal_code		#郵便番号
      t.string :adress1			#住所1
      t.string :adress2			#住所2
      t.string :tel				#電話番号
      t.string :fax				#FAX番号
      t.string :affiliated_post	#担当者部署
      t.string :charge_name		#担当者名
      t.string :email			#E-mail
      t.timestamps
      t.datetime :deleted_at
    end
  end
end

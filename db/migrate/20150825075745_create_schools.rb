class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
      t.string :school_type			#学校区分
      t.string :name, :null => false			#学校名
      t.string :kana			#学校名カナ
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

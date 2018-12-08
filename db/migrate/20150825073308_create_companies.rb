class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :type, :null => false			#会社分類
      t.string :name, :null => false			#企業名
      t.string :kana      #企業名カナ
      t.string :office      #支店名
      t.string :postal_code		#郵便番号
      t.string :adress1			#住所1
      t.string :adress2			#住所2
      t.string :tel				#電話番号
      t.string :fax				#FAX番号
      t.string :affiliated_post	#担当者部署
      t.string :charge_name		#担当者名
      t.string :email			#E-mail
      t.string :company_number  #管理番号
      t.integer :affiliated   #グループ区分
      t.string :group_number  #グループ管理番号
      t.integer :demanded   #請求区分
      t.string :remark 			#備考
      t.timestamps
      t.datetime :deleted_at
    end
  end
end

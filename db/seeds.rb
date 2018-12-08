
#利用者の権限作成
if Role.count == 0
  puts "管理権限作成"
  Role.create([
    {name: "admin"},{name: "user"}
  ])
end

#ログイン用アカウント作成 ↓入らない
if User.count == 0
  puts "管理ユーザ作成"
  User.create([
    {name: "管理者", email: "admin@example.jp", encrypted_password: "admin1234"},
    {name: "馬場", email: "kbabaran556@gmail.com", encrypted_password: "kbabaran556"}
  ])
end

#管理者アカウント権限付与 ↓入らない手作業で実施
#if RoleUser.count == 0
#  puts "管理者権限付与"
#  RoleUser.create([
#    {user_id: 1, role_id: 1},
#    {user_id: 2, role_id: 1}
#  ])
#end


if Company.count == 0
  puts "企業作成"
  Company.create([
  	{type: "Partner", name: "共和株式会社", kana: "キョウワカブシキガイシャ", office: "", adress1: "長崎県長崎市かき道", tel: "000-000-0000", fax: "000-000-0000", charge_name: "馬場"},
	{type: "Travel", name: "日本旅行", office: "千葉教育旅行支店", adress1: "千葉", tel: "043-227-2300", fax: "043-225-2241", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "福岡教育旅行支店", adress1: "福岡", tel: "092-431-7286", fax: "092-472-7199", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "神奈川教育旅行支店", adress1: "神奈川", tel: "045-641-2933", fax: "045-641-2932", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "栃木支店", adress1: "栃木", tel: "0282-23-3223", fax: "0282-22-7473", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "宇都宮支店", adress1: "栃木", tel: "028-643-3100", fax: "028-643-3004", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "東京旅行支店", adress1: "東京", tel: "03-3614-5207", fax: "03-3614-5254", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "Ｔｉｓ小倉支店", adress1: "福岡", tel: "093-521-0800", fax: "093-521-1777", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "東関東教育旅行センター", adress1: "茨城", tel: "0297-20-0701", fax: "0297-46-0560", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "水戸支店", adress1: "茨城", tel: "029-224-6007", fax: "029-224-9569", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "伊勢支店", adress1: "三重", tel: "0956-28-5191", fax: "0596-22-1941", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "埼玉教育旅行支店", adress1: "埼玉", tel: "048-648-0220", fax: "048-648-6455", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "埼玉教育旅行支店", adress1: "埼玉", tel: "048-648-0111", fax: "048-648-6455", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "藤沢支店", adress1: "神奈川", tel: "0466-22-7411", fax: "0466-24-4175", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "広島教育旅行支店", adress1: "広島", tel: "082-263-4053", fax: "082-264-1922", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "山口支店", adress1: "山口", tel: "083-972-2211", fax: "083-972-2233", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "上田支店", adress1: "長野", tel: "0268-24-7601", fax: "0268-24-7622", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "前橋支店", adress1: "群馬", tel: "0272-32-8323", fax: "0272-34-8464", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "東京教育旅行支店", adress1: "東京", tel: "03-3614-5207", fax: "03-3614-5254", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "東京教育旅行支店", adress1: "東京", tel: "03-3614-5111", fax: "03-3614-5254", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "東京多摩支店", adress1: "東京", tel: "042-527-9535", fax: "042-522-2553", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "津支店", adress1: "三重", tel: "059-226-5571", fax: "059-228-7731", group_number: "3000"},
	{type: "Travel", name: "日本旅行", office: "ＪＡＴＳ（ジャッツ）", adress1: "東京", tel: "03-5762-3371", fax: "03-5762-3370", group_number: "3000"},
	{type: "Travel", name: "近畿日本ツーリスト", office: "団体旅行事業本部", adress1: "東京", tel: "03-3255-7957", fax: "03-3255-7630", group_number: "3100"},
	{type: "Travel", name: "近畿日本ツーリスト", office: "首都圏仕入販売センター", adress1: "東京", tel: "03-5638-7271", fax: "03-5638-7286", group_number: "3100"},
	{type: "Travel", name: "近畿日本ツーリスト", office: "長野支店", adress1: "長野", tel: "026-227-7112", fax: "026-224-3728", group_number: "3100"},
	{type: "Travel", name: "近畿日本ツーリスト", office: "宇都宮支店", adress1: "栃木", tel: "028-633-2151", fax: "028-638-5576", group_number: "3100"},
	{type: "Travel", name: "近畿日本ツーリスト", office: "長岡支店", adress1: "新潟", tel: "0258-34-1112", fax: "0258-34-5402", group_number: "3100"},
	{type: "Travel", name: "近畿日本ツーリスト", office: "新潟支店", adress1: "新潟", tel: "025-241-6161", fax: "025-247-1211", group_number: "3100"},
	{type: "Travel", name: "近畿日本ツーリスト", office: "高崎支店", adress1: "群馬", tel: "027-325-2201", fax: "027-325-6048", group_number: "3100"},
	{type: "Travel", name: "近畿日本ツーリスト", office: "高松支店", adress1: "香川", tel: "087-851-3331", fax: "087-851-3330", group_number: "3100"},
	{type: "Travel", name: "近畿日本ツーリスト", office: "つくば支店", adress1: "茨城", tel: "029-852-2255", fax: "029-852-2266", group_number: "3100"},
	{type: "Travel", name: "近畿日本ツーリスト", office: "土浦支店", adress1: "茨城", tel: "029-823-1612", fax: "029-823-3741", group_number: "3100"},
	{type: "Travel", name: "近畿日本ツーリスト", office: "津支店", adress1: "三重", tel: "059-227-5516", fax: "059-224-1527", group_number: "3100"},
	{type: "Travel", name: "近畿日本ツーリスト", office: "四日市支店", adress1: "三重", tel: "059-351-4851", fax: "059-351-4580", group_number: "3100"},
	{type: "Travel", name: "JTB九州", office: "九州営業本部", adress1: "福岡", tel: "092-721-1950", fax: "092-714-6210", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "団体営業部", adress1: "福岡", tel: "092-721-0707", fax: "092-714-6210", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "福岡教育旅行センター", adress1: "福岡", tel: "092-752-8002", fax: "092-288-2668", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "九州国内商品事業部", adress1: "福岡", tel: "092-752-8034", fax: "092-751-7722", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "北九州教育旅行センター", adress1: "福岡", tel: "093-551-6531", fax: "093-551-5256", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "北九州支店", adress1: "福岡", tel: "093-521-2887", fax: "093-551-5256", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "久留米支店", adress1: "福岡", tel: "0942-39-3115", fax: "0942-39-4099", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "大牟田支店", adress1: "福岡", tel: "0944-53-1521", fax: "0944-57-7281", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "大牟田支店", adress1: "福岡", tel: "0944-57-1255", fax: "0944-57-7281", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "飯塚支店", adress1: "福岡", tel: "0948-24-2240", fax: "0948-24-6569", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "長崎支店", adress1: "長崎", tel: "095-824-5158", fax: "095-823-0448", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "長崎教育旅行センター", adress1: "長崎", tel: "095-824-2400", fax: "095-825-0221", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "佐世保支店", adress1: "長崎", tel: "0956-23-5218", fax: "0956-22-6644", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "熊本支店", adress1: "熊本", tel: "096-322-4115", fax: "096-325-8105", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "熊本教育旅行センター", adress1: "熊本", tel: "096-325-8113", fax: "096-325-8105", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "熊本教育旅行センター", adress1: "熊本", tel: "096-355-2724", fax: "096-325-8105", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "大分教育旅行センター", adress1: "大分", tel: "097-533-1020", fax: "097-534-9197", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "宮崎支店", adress1: "宮崎", tel: "0985-29-3511", fax: "0985-27-1124", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "宮崎支店", adress1: "宮崎", tel: "0985-29-2111", fax: "0985-27-1124", group_number: "3500"},
	{type: "Travel", name: "JTB九州", office: "鹿児島教育旅行センター", adress1: "鹿児島", tel: "099-226-1515", fax: "099-224-4459", group_number: "3500"},
	{type: "Travel", name: "JTB関東", office: "本社営業部第二支店", adress1: "埼玉", tel: "048-650-0277", fax: "048-650-0345", group_number: "3501"},
	{type: "Travel", name: "JTB関東", office: "団体旅行埼玉支店", adress1: "埼玉", tel: "048-644-5311", fax: "048-647-4487", group_number: "3501"},
	{type: "Travel", name: "JTB関東", office: "法人営業小山支店", adress1: "栃木", tel: "0285-25-8133", fax: "0285-23-6900", group_number: "3501"},
	{type: "Travel", name: "JTB関東", office: "法人営業足利支店", adress1: "栃木", tel: "0284-70-0118", fax: "0284-70-0307", group_number: "3501"},
	{type: "Travel", name: "JTB関東", office: "高崎支店", adress1: "群馬", tel: "027-322-5799", fax: "027-327-5403", group_number: "3501"},
	{type: "Travel", name: "JTB関東", office: "法人営業前橋支店", adress1: "群馬", tel: "027-224-4113", fax: "027-221-0221", group_number: "3501"},
	{type: "Travel", name: "JTB関東", office: "法人営業茨城南支店", adress1: "茨城", tel: "029-860-2871", fax: "029-854-1664", group_number: "3501"},
	{type: "Travel", name: "JTB関東", office: "水戸支店", adress1: "茨城", tel: "029-225-5221", fax: "029-226-4017", group_number: "3501"},
	{type: "Travel", name: "JTB関東", office: "土浦支店", adress1: "茨城", tel: "029-822-5838", fax: "029-824-1940", group_number: "3501"},
	{type: "Travel", name: "JTB関東", office: "ＪＴＢコーポレートサービス", adress1: "神奈川", tel: "044-233-4561", fax: "044-211-9765", group_number: "3501"},
	{type: "Travel", name: "JTB関東", office: "ＪＴＢサポートインターナショナル", adress1: "東京", tel: "03-3258-2677", fax: "03-3258-2682", group_number: "3501"},
	{type: "Travel", name: "JTB関東", office: "平塚支店", adress1: "神奈川", tel: "0463-23-5160", fax: "0463-24-5292", group_number: "3501"},
	{type: "Travel", name: "JTB関東", office: "相模大野支店", adress1: "神奈川", tel: "042-740-1237", fax: "042-740-3283", group_number: "3501"},
	{type: "Travel", name: "JTB首都圏", office: "法人営業神奈川西支店", adress1: "神奈川", tel: "0463-23-5160", fax: "0463-23-9057", group_number: "3502"},
	{type: "Travel", name: "JTB首都圏", office: "川越支店", adress1: "埼玉", tel: "049-246-5813", fax: "049-241-3492", group_number: "3502"},
	{type: "Travel", name: "JTB首都圏", office: "法人営業横浜支店", adress1: "神奈川", tel: "045-312-3333", fax: "045-314-9198", group_number: "3502"},
	{type: "Travel", name: "JTB首都圏", office: "教育旅行東京東支店", adress1: "東京", tel: "03-3257-8591", fax: "03-3257-8426", group_number: "3502"},
	{type: "Travel", name: "JTB首都圏", office: "教育旅行東京西支店", adress1: "東京", tel: "03-5351-0029", fax: "03-5351-0043", group_number: "3502"},
	{type: "Travel", name: "JTB首都圏", office: "教育旅行千葉支店", adress1: "千葉", tel: "043-290-8822", fax: "043-290-8614", group_number: "3502"},
	{type: "Travel", name: "JTB首都圏", office: "川崎支店", adress1: "神奈川", tel: "044-233-4561", fax: "044-211-9765", group_number: "3502"},
	{type: "Travel", name: "JTB中部", office: "岐阜支店", adress1: "岐阜", tel: "058-264-7911", fax: "058-262-3641", group_number: "3503"},
	{type: "Travel", name: "JTB中部", office: "教育旅行名古屋支店", adress1: "愛知", tel: "052-586-2322", fax: "052-586-2355", group_number: "3503"},
	{type: "Travel", name: "JTB中部", office: "教育旅行名古屋支店", adress1: "愛知", tel: "052-586-2311", fax: "052-586-2355", group_number: "3503"},
	{type: "Travel", name: "JTB中部", office: "教育旅行名古屋支店", adress1: "愛知", tel: "052-972-9710", fax: "052-972-9711", group_number: "3503"},
	{type: "Travel", name: "JTB中部", office: "教育旅行名古屋支店", adress1: "愛知", tel: "052-972-9733", fax: "052-972-9711", group_number: "3503"},
	{type: "Travel", name: "JTB中部", office: "津支店", adress1: "三重", tel: "059-229-1292", fax: "059-224-9831", group_number: "3503"},
	{type: "Travel", name: "JTB中部", office: "津支店", adress1: "三重", tel: "059-228-0203", fax: "059-224-9831", group_number: "3503"},
	{type: "Travel", name: "JTB中部", office: "四日市支店", adress1: "三重", tel: "059-352-7341", fax: "059-351-7661", group_number: "3503"},
	{type: "Travel", name: "JTB中部", office: "福井支店", adress1: "福井", tel: "0776-27-7712", fax: "0776-26-7965", group_number: "3503"},
	{type: "Travel", name: "JTB中部", office: "松本支店", adress1: "長野", tel: "0263-35-3315", fax: "0263-35-9976", group_number: "3503"},
	{type: "Travel", name: "JTB中部", office: "静岡支店", adress1: "静岡", tel: "054-251-2398", fax: "054-253-4135", group_number: "3503"},
	{type: "Travel", name: "JTB東北", office: "横手支店", adress1: "秋田", tel: "0182-33-4933", fax: "0182-33-5899", group_number: "3504"},
	{type: "Travel", name: "JTB東北", office: "鶴岡支店", adress1: "山形", tel: "0235-22-9083", fax: "0235-24-6286", group_number: "3504"},
	{type: "Travel", name: "JTB西日本", office: "団体旅行京都支店", adress1: "京都", tel: "075-241-0136", fax: "075-255-6765", group_number: "3505"},
	{type: "Travel", name: "JTB西日本", office: "団体旅行京都支店", adress1: "京都", tel: "075-252-3100", fax: "075-252-3117", group_number: "3505"},
	{type: "Travel", name: "JTB西日本", office: "大津支店", adress1: "滋賀", tel: "077-522-4103", fax: "077-522-2941", group_number: "3505"},
	{type: "Travel", name: "JTB西日本", office: "大津支店", adress1: "滋賀", tel: "077-522-4178", fax: "077-522-2941", group_number: "3505"},
	{type: "Travel", name: "JTB西日本", office: "奈良支店", adress1: "奈良", tel: "0742-23-2521", fax: "0742-26-2521", group_number: "3505"},
	{type: "Travel", name: "JTB西日本", office: "教育旅行大阪支店", adress1: "大阪", tel: "06-6271-8375", fax: "06-6262-9248", group_number: "3505"},
	{type: "Travel", name: "JTB中国", office: "教育旅行広島支店", adress1: "広島", tel: "082-261-7311", fax: "082-261-7363", group_number: "3506"},
	{type: "Travel", name: "JTB中国", office: "岩国支店", adress1: "広島", tel: "0827-30-2200", fax: "", group_number: "3506"},
	{type: "Travel", name: "JTB中国", office: "岡山教育旅行センター", adress1: "岡山", tel: "086-232-3441", fax: "086-223-7759", group_number: "3506"},
	{type: "Travel", name: "JTB四国", office: "高知支店", adress1: "高知", tel: "0888-23-2331", fax: "0888-73-0609", group_number: "3506"},
	{type: "Travel", name: "西鉄旅行", office: "福岡教育旅行支店", adress1: "福岡", tel: "092-526-8086", fax: "092-526-8525", group_number: "3700"},
	{type: "Travel", name: "西鉄旅行", office: "北九州支店", adress1: "福岡", tel: "093-563-3710", fax: "093-563-3755", group_number: "3700"},
	{type: "Travel", name: "西鉄旅行", office: "久留米支店", adress1: "福岡", tel: "0942-33-1573", fax: "0942-33-8459", group_number: "3700"},
	{type: "Travel", name: "西鉄旅行", office: "鳥栖営業所", adress1: "佐賀", tel: "0942-83-0033", fax: "", group_number: "3700"},
	{type: "Travel", name: "西鉄旅行", office: "熊本支店", adress1: "熊本", tel: "096-383-2700", fax: "096-383-2710", group_number: "3700"},
	{type: "Travel", name: "西鉄旅行", office: "熊本教育旅行センター", adress1: "熊本", tel: "096-372-5111", fax: "096-363-3273", group_number: "3700"},
	{type: "Travel", name: "トップツアー福岡支店", office: "", adress1: "福岡", tel: "092-739-0010", fax: "092-739-7773", group_number: "3800"},
	{type: "Travel", name: "トップツアー関門支店", office: "", adress1: "福岡", tel: "093-321-4002", fax: "093-321-4007", group_number: "3800"},
	{type: "Travel", name: "トップツアー大分支店", office: "", adress1: "大分", tel: "097-538-1091", fax: "097-538-1487", group_number: "3800"},
	{type: "Travel", name: "阪急交通社熊本支店", office: "", adress1: "熊本", tel: "096-382-5161", fax: "096-382-6500", group_number: "3900"},
	{type: "Travel", name: "関東旅行", office: "", adress1: "栃木", tel: "0283-23-3315", fax: "0283-22-7841", group_number: "3910"},
	{type: "Travel", name: "東武トラベル", office: "", adress1: "千葉", tel: "043-224-8792", fax: "043-224-9664", group_number: "3920"},
	{type: "Travel", name: "京阪交通社東京営業所", office: "", adress1: "東京", tel: "03-3543-0170", fax: "03-3544-1683", group_number: "3930"},
	{type: "Travel", name: "名鉄観光東京中央支店", office: "", adress1: "東京", tel: "03-3535-3290", fax: "03-3535-3296", group_number: "3940"},
	{type: "Travel", name: "名鉄観光本社市場開発部", office: "", adress1: "愛知", tel: "052-582-2107", fax: "052-582-5031", group_number: "3950"},
	{type: "Transport", name: "運送会社", office: "", adress1: "", tel: "", fax: "", group_number: ""}
  ])
end

if School.count == 0
  puts "学校作成"
  School.create([
    {school_type: "middle", name: "藤岡工業高等学校", postal_code: "", adress1: "群馬県藤岡市下戸塚47-2", tel: ""},
    {school_type: "middle", name: "前橋東高等学校", postal_code: "", adress1: "", tel: ""},
    {school_type: "middle", name: "桐生西高等学校", postal_code: "", adress1: "", tel: ""},
    {school_type: "middle", name: "新田暁高等学校", postal_code: "", adress1: "群馬県太田市新田大根町999", tel: ""},
    {school_type: "middle", name: "利根商業高等学校", postal_code: "", adress1: "群馬県利根群みなかみ町月夜野591", tel: ""},
    {school_type: "middle", name: "渋川工業高等学校", postal_code: "", adress1: "", tel: ""},
    {school_type: "middle", name: "太田工業高等学校", postal_code: "", adress1: "", tel: ""},
    {school_type: "middle", name: "高崎経済大学付属高等学校", postal_code: "", adress1: "群馬県高崎市浜川町1650-1", tel: ""},
    {school_type: "middle", name: "江戸川高等学校", postal_code: "", adress1: "", tel: ""},
    {school_type: "middle", name: "八王子実践高等学校", postal_code: "", adress1: "東京都八王子市台町1-16-15", tel: ""},
    {school_type: "middle", name: "向丘高等学校", postal_code: "", adress1: "東京都文京区向ヶ丘1-11-18", tel: "03-3811-2022"},
    {school_type: "middle", name: "美原高等学校", postal_code: "", adress1: "東京都大田区大森東1-33-1", tel: "03-3764-3883"},
    {school_type: "middle", name: "文京高等学校", postal_code: "", adress1: "", tel: ""},
    {school_type: "middle", name: "潮来高等学校", postal_code: "", adress1: "", tel: ""},
    {school_type: "middle", name: "つくば高等学校", postal_code: "300-4231", adress1: "茨城県つくば市北条4387", tel: "029-867-0041"},
    {school_type: "middle", name: "高萩清松高等学校", postal_code: "318-0001", adress1: "茨城県高萩市赤浜1864", tel: ""},
    {school_type: "middle", name: "多賀高等学校", postal_code: "", adress1: "", tel: ""},
    {school_type: "middle", name: "鬼怒商業高等学校", postal_code: "", adress1: "", tel: ""},
    {school_type: "middle", name: "聖地深谷高等学校", postal_code: "", adress1: "埼玉県深谷市上野台369", tel: ""}
  ])
end

if Hotel.count == 0
  puts "ホテル作成"
  Hotel.create([
    {name: "AJ恩納ヒルリゾート", postal_code: "", adress1: "沖縄県国頭郡恩納村字真榮田1888", tel: ""},
    {name: "AJリゾートアイランド伊計島", postal_code: "904-2421", adress1: "沖縄県うるま市与那城伊計1286", tel: ""},
    {name: "ANAインターコンチネンタル万座ビーチリゾート", postal_code: "", adress1: "沖縄県国頭群恩納村字瀬良垣2260", tel: "098-966-1211"},
    {name: "ANAクラウンプラザ沖縄ハーバービュー", postal_code: "", adress1: "", tel: ""},
    {name: "うるま与那城他種目球技場", postal_code: "904-2305", adress1: "沖縄県うるま与那城中央5", tel: ""},
    {name: "運天港", postal_code: "", adress1: "沖縄県今帰仁村上運天335", tel: ""},
    {name: "沖縄残波岬ロイヤルホテル", postal_code: "904-0394", adress1: "沖縄県中頭郡読谷村字座1575", tel: ""},
    {name: "沖縄サンプラザホテル", postal_code: "902-0067", adress1: "沖縄県那覇市安里138", tel: "098-866-0920"},
    {name: "オキナワマリオットリゾート＆スパ", postal_code: "905-0026", adress1: "沖縄県名護市喜瀬1490-1", tel: "098-051-1000"},
    {name: "グスクロード公園", postal_code: "901-0605", adress1: "沖縄県南城市玉城中山", tel: "098-948-2141"},
    {name: "ザ・ビーチタワー沖縄", postal_code: "", adress1: "沖縄県中頭郡北谷町美浜8-6", tel: "098-921-7711"},
    {name: "サザンビーチホテル＆リゾート", postal_code: "", adress1: "沖縄県糸満市西崎町1-6-1", tel: "098-992-7500"},
    {name: "サザンリスクリゾート", postal_code: "", adress1: "沖縄県八重瀬町", tel: "098-998-7001"},
    {name: "サンパレス球陽館", postal_code: "", adress1: "沖縄県那覇市久茂地2-5-1", tel: ""},
    {name: "サンマリーナホテル", postal_code: "", adress1: "沖縄県国頭郡恩納村字富着66-1", tel: ""},
    {name: "しまんちゅうクラブ", postal_code: "", adress1: "", tel: ""},
    {name: "東京第一ホテルグランドメールリゾート", postal_code: "", adress1: "沖縄県那覇市与儀2-8-1", tel: ""},
    {name: "泊港", postal_code: "", adress1: "沖縄県座間味村役場那覇出張所", tel: "098-868-4567"},
    {name: "南西観光ホテル", postal_code: "", adress1: "", tel: ""},
    {name: "ネイチャー未来館", postal_code: "904-1201", adress1: "沖縄県金武町字金武11818-2", tel: "098-968-6117"},
    {name: "パシフィックホテル沖縄", postal_code: "900-0036", adress1: "沖縄県那覇市西3-6-1", tel: "098-868-5162"},
    {name: "ビーチリゾートモリマー", postal_code: "904-0305", adress1: "沖縄県読谷村字波平2350", tel: "098-921-5330"},
    {name: "ホテルJALシティ那覇", postal_code: "900-0013", adress1: "沖縄県那覇市牧志1-3-70", tel: "098-866-2580"},
    {name: "ホテルオーシャン", postal_code: "", adress1: "沖縄県那覇市安里2-4-8", tel: ""},
    {name: "ホテルオリオンモトブリゾート＆スパ", postal_code: "", adress1: "沖縄県国頭群本部町字備瀬148-1", tel: "098-051-7300"},
    {name: "ホテルグランビューガーデン沖縄", postal_code: "901-0225", adress1: "沖縄県豊見城市豊崎3-82", tel: ""},
    {name: "ホテルサンマリーナ", postal_code: "904-0494", adress1: "沖縄県国頭群恩納村字富着66-1", tel: "098-965-2222"},
    {name: "ホテル日航那覇グランドキャスル", postal_code: "903-8601", adress1: "沖縄県那覇市首里山川1-132-1", tel: "098-868-5454"},
    {name: "ホテルみゆきビーチ", postal_code: "904-0402", adress1: "沖縄国頭郡恩納村字安富祖1583-2", tel: "098-967-8031"},
    {name: "ホテルむら咲むら", postal_code: "904-0302", adress1: "沖縄県中頭郡読谷村高志保1020-1", tel: "098-958-1111"},
    {name: "ホテルモントレ沖縄", postal_code: "904-0413", adress1: "沖縄県国頭群恩納村字富着1550-1", tel: "098-993-7111"},
    {name: "ホテルリゾネックス名護", postal_code: "905-0008", adress1: "沖縄県名護市山入端247-1", tel: "0980-53-8021"},
    {name: "ホテルロイヤルオリオン", postal_code: "902-0067", adress1: "沖縄県那覇市安里1-2-21", tel: "098-866-5533"},
    {name: "マハイナウェルネスリゾートオキナワ", postal_code: "905-0205", adress1: "沖縄県国頭群本部町字山川1456", tel: "098-851-7700"},
    {name: "マリンピアザオキナワ", postal_code: "905-0216", adress1: "沖縄県国頭群本部町字濱元410", tel: "098-048-3000"},
    {name: "みゆきハマバルリゾート", postal_code: "904-0402", adress1: "沖縄国頭郡恩納村字安富祖1314", tel: "098-967-7722"},
    {name: "本部港", postal_code: "905-0225", adress1: "沖縄県国頭群本部町崎本部5232", tel: ""},
    {name: "ユインチホテル南城", postal_code: "", adress1: "沖縄県南城市佐敷新里1688", tel: "098-947-0111"},
    {name: "リザンシーパークホテル谷茶ベイ", postal_code: "904-0496", adress1: "沖縄県谷茶1496", tel: "098-964-6611"},
    {name: "ロワジールホテル沖縄美ら海", postal_code: "", adress1: "沖縄県国頭郡本部町字石川938", tel: ""},
    {name: "沖縄サンコーストホテル", postal_code: "", adress1: "沖縄県名護市字幸喜108", tel: "0980-53-0330"},
    {name: "かりゆしビーチリゾートオーシャンスパ", postal_code: "904-0401", adress1: "沖縄県国頭郡恩納村字名嘉真ヤー", tel: "098-967-8731"},
    {name: "那覇セントラルホテル", postal_code: "", adress1: "沖縄県那覇市牧志2-16-36", tel: ""},
    {name: "ホテルゆがふいんBISE", postal_code: "", adress1: "沖縄県本部町備瀬1147-1", tel: ""}
  ])
end


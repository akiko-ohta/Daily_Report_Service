# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Employer.find_or_create_by!(email: "aaaaaaa@xxx.xxx") do |employer|
  employer.password = "wS2nWpLi"
end

Department.find_or_create_by!(name: "フロント") do |department|
end

Department.find_or_create_by!(name: "レストラン") do |department|
end

Department.find_or_create_by!(name: "ショップ") do |department|
end

Employee.find_or_create_by!(user_code: "001") do |employee|
  employee.department_id = '1'
  employee.last_name = '令和'
  employee.first_name = '道子'
  employee.last_name_kana = 'レイワ'
  employee.first_name_kana = 'ミチコ'
  employee.password = '000'
  employee.is_active = '有効'
end

Employee.find_or_create_by!(user_code: "002") do |employee|
  employee.department_id = '1'
  employee.last_name = '令和'
  employee.first_name = '太郎'
  employee.last_name_kana = 'レイワ'
  employee.first_name_kana = 'タロウ'
  employee.password = '000'
  employee.is_active = '有効'
end

Employee.find_or_create_by!(user_code: "003") do |employee|
  employee.department_id = '1'
  employee.last_name = '令和'
  employee.first_name = '次郎'
  employee.last_name_kana = 'レイワ'
  employee.first_name_kana = 'ジロウ'
  employee.password = '000'
  employee.is_active = '無効'
end

Employee.find_or_create_by!(user_code: "004") do |employee|
  employee.department_id = '2'
  employee.last_name = '松本'
  employee.first_name = '道子'
  employee.last_name_kana = 'マツモト'
  employee.first_name_kana = 'ミチコ'
  employee.password = '000'
  employee.is_active = '有効'
end

Employee.find_or_create_by!(user_code: "005") do |employee|
  employee.department_id = '2'
  employee.last_name = '松本'
  employee.first_name = '太郎'
  employee.last_name_kana = 'マツモト'
  employee.first_name_kana = 'タロウ'
  employee.password = '000'
  employee.is_active = '有効'
end

Employee.find_or_create_by!(user_code: "006") do |employee|
  employee.department_id = '2'
  employee.last_name = '松本'
  employee.first_name = '次郎'
  employee.last_name_kana = 'マツモト'
  employee.first_name_kana = 'ジロウ'
  employee.password = '000'
  employee.is_active = '無効'
end

Employee.find_or_create_by!(user_code: "007") do |employee|
  employee.department_id = '3'
  employee.last_name = '長野'
  employee.first_name = '道子'
  employee.last_name_kana = 'ナガノ'
  employee.first_name_kana = 'ミチコ'
  employee.password = '000'
  employee.is_active = '有効'
end

Employee.find_or_create_by!(user_code: "008") do |employee|
  employee.department_id = '3'
  employee.last_name = '長野'
  employee.first_name = '太郎'
  employee.last_name_kana = 'ナガノ'
  employee.first_name_kana = 'タロウ'
  employee.password = '000'
  employee.is_active = '有効'
end

Employee.find_or_create_by!(user_code: "009") do |employee|
  employee.department_id = '3'
  employee.last_name = '長野'
  employee.first_name = '次郎'
  employee.last_name_kana = 'ナガノ'
  employee.first_name_kana = 'ジロウ'
  employee.password = '000'
  employee.is_active = '無効'
end

Task.find_or_create_by!(name: "フロア点灯") do |task|
  task.department_id = '1'
  task.execution_time = '5:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "日報送信") do |task|
  task.department_id = '1'
  task.execution_time = '05:15'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "当日予約リスト発行") do |task|
  task.department_id = '1'
  task.execution_time = '05:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "BGM開始") do |task|
  task.department_id = '1'
  task.execution_time = '06:45'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "館外見回り、清掃（朝）") do |task|
  task.department_id = '1'
  task.execution_time = '07:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "トイレチェック（朝）") do |task|
  task.department_id = '1'
  task.execution_time = '07:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "大浴場清掃") do |task|
  task.department_id = '1'
  task.execution_time = '10:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "全体ミーティング") do |task|
  task.department_id = '1'
  task.execution_time = '10:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "駐車券チェック") do |task|
  task.department_id = '1'
  task.execution_time = '11:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "売上計算") do |task|
  task.department_id = '1'
  task.execution_time = '11:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "日報発行") do |task|
  task.department_id = '1'
  task.execution_time = '11:15'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "バッチ処理") do |task|
  task.department_id = '1'
  task.execution_time = '11:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "日帰りチェックイン") do |task|
  task.department_id = '1'
  task.execution_time = '11:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "釣銭両替") do |task|
  task.department_id = '1'
  task.execution_time = '11:30'
  task.is_active = '無効'
end

Task.find_or_create_by!(name: "2日前チェック") do |task|
  task.department_id = '1'
  task.execution_time = '12:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "前日チェック") do |task|
  task.department_id = '1'
  task.execution_time = '12:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "3日前（レストラン）チェック") do |task|
  task.department_id = '1'
  task.execution_time = '12:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "トイレチェック（昼）") do |task|
  task.department_id = '1'
  task.execution_time = '13:00'
  task.is_active = '無効'
end

Task.find_or_create_by!(name: "トイレチェック（夕）") do |task|
  task.department_id = '1'
  task.execution_time = '16:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "館外見回り、清掃（夕）") do |task|
  task.department_id = '1'
  task.execution_time = '16:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "フロア見回り") do |task|
  task.department_id = '1'
  task.execution_time = '17:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "駐車場チェック（夕）") do |task|
  task.department_id = '1'
  task.execution_time = '18:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "トイレチェック（夜）") do |task|
  task.department_id = '1'
  task.execution_time = '19:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "中締め") do |task|
  task.department_id = '1'
  task.execution_time = '21:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "領収書発行") do |task|
  task.department_id = '1'
  task.execution_time = '21:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "トイレチェック（夜2）") do |task|
  task.department_id = '1'
  task.execution_time = '22:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "BGM終了") do |task|
  task.department_id = '1'
  task.execution_time = '22:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "翌日カルテ作成") do |task|
  task.department_id = '1'
  task.execution_time = '22:00'
  task.is_active = '有効'
end


Task.find_or_create_by!(name: "フロア見回り、消灯") do |task|
  task.department_id = '1'
  task.execution_time = '23:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "カルテチェック") do |task|
  task.department_id = '1'
  task.execution_time = '24:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "朝食リスト発行") do |task|
  task.department_id = '2'
  task.execution_time = '06:30'
  task.is_active = '無効'
end

Task.find_or_create_by!(name: "朝食料理出し") do |task|
  task.department_id = '2'
  task.execution_time = '06:45'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "朝食開場") do |task|
  task.department_id = '2'
  task.execution_time = '07:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "朝食集計") do |task|
  task.department_id = '2'
  task.execution_time = '09:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "当日予約リスト作成") do |task|
  task.department_id = '2'
  task.execution_time = '9:00'
  task.is_active = '無効'
end

Task.find_or_create_by!(name: "食器洗浄、拭き上げ（朝食）") do |task|
  task.department_id = '2'
  task.execution_time = '09:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "ホール清掃") do |task|
  task.department_id = '2'
  task.execution_time = '09:45'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "ランチセッティング") do |task|
  task.department_id = '2'
  task.execution_time = '10:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "全体ミーティング") do |task|
  task.department_id = '2'
  task.execution_time = '10:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "ランチミーティング") do |task|
  task.department_id = '2'
  task.execution_time = '11:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "レジ入金") do |task|
  task.department_id = '2'
  task.execution_time = '11:15'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "ランチ開店") do |task|
  task.department_id = '2'
  task.execution_time = '11:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "中締め") do |task|
  task.department_id = '2'
  task.execution_time = '14:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "食器洗浄、拭き上げ（ランチ）") do |task|
  task.department_id = '2'
  task.execution_time = '14:15'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "ディナーセッティング") do |task|
  task.department_id = '2'
  task.execution_time = '16:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "ディナーミーティング") do |task|
  task.department_id = '2'
  task.execution_time = '17:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "ディナー開店") do |task|
  task.department_id = '2'
  task.execution_time = '18:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "食器洗浄、拭き上げ（ディナー）") do |task|
  task.department_id = '2'
  task.execution_time = '21:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "ホール清掃（締め）") do |task|
  task.department_id = '2'
  task.execution_time = '21:15'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "売上計算") do |task|
  task.department_id = '2'
  task.execution_time = '21:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "日報発行") do |task|
  task.department_id = '2'
  task.execution_time = '21:40'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "朝食セッティング") do |task|
  task.department_id = '2'
  task.execution_time = '21:45'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "ドリンク補充") do |task|
  task.department_id = '2'
  task.execution_time = '21:50'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "フロア清掃") do |task|
  task.department_id = '3'
  task.execution_time = '07:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "商品チェック") do |task|
  task.department_id = '3'
  task.execution_time = '07:15'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "レジ袋チェック") do |task|
  task.department_id = '3'
  task.execution_time = '07:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "レジ入金") do |task|
  task.department_id = '3'
  task.execution_time = '07:45'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "開店") do |task|
  task.department_id = '3'
  task.execution_time = '08:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "全体ミーティング") do |task|
  task.department_id = '3'
  task.execution_time = '10:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "商品補充（昼）") do |task|
  task.department_id = '3'
  task.execution_time = '11:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "商品補充（夕）") do |task|
  task.department_id = '3'
  task.execution_time = '15:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "レジ締め") do |task|
  task.department_id = '3'
  task.execution_time = '19:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "日報発行") do |task|
  task.department_id = '3'
  task.execution_time = '19:10'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "フロア清掃") do |task|
  task.department_id = '3'
  task.execution_time = '19:15'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "商品補充") do |task|
  task.department_id = '3'
  task.execution_time = '19:30'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "在庫チェック") do |task|
  task.department_id = '3'
  task.execution_time = '20:00'
  task.is_active = '有効'
end

Task.find_or_create_by!(name: "発注") do |task|
  task.department_id = '3'
  task.execution_time = '20:15'
  task.is_active = '有効'
end
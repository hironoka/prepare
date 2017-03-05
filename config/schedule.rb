# config/schedule.rb

# 出力先のログファイルの指定
set :output, 'log/crontab.log'
# ジョブの実行環境の指定
set :environment, :production

# # 3時間毎に実行するスケジューリング
# every 3.hours do
#   runner 'MyModel.some_process'
#   rake 'my:rake:task'
#   command '/usr/bin/my_great_command'
# end

# 毎日 am4:30のスケジューリング
every 1.day, at: '4:30 am' do
  runner 'Remind.notice_to_user'
end

# # 一時間毎のスケジューリング
# every :hour do # Many shortcuts available: :hour, :day, :month, :year, :reboot
#   runner 'SomeModel.ladeeda'
# end
#
# # 日曜日のpm12時にスケジューリング
# every :sunday, at: '12pm' do # Use any day of the week or :weekend, :weekday
#   runner 'Task.do_something_great'
# end
#
# # crontab型の設定「分」「時」「日」「月」「曜日」
# # 毎月27日〜31日まで0:00に実行
# every '0 0 27-31 * * ' do
#   command 'echo 'you can use raw cron syntax too''
# end
#
# # 6-24時まで3時間おきに実行
# work_hour_per_two = (6..24).select{ |_| _%3 == 0 }.map {|_| "#{_}:00" }
# every 1.day, at: work_hour_per_two do
#   rake 'my:rake:task'
end

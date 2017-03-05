class RemindsController < ApplicationController

  def create
    @remind = Remind.new(remind_params)
    if @remind.save
      redirect_to :root
    end
  end

  def notice_to_user
    today = Date.today
    @reminds = Remind.where(remind_date: today)
    if @reminds.present?
      @reminds.each do |remind|
        notify_to_slack(remind)
      end
    end
  end

  private

  def remind_params
    params.require(:remind).permit(:user_id, :birthday_user_id, :remind_date)
  end

  def notify_to_slack(remind)
  text = <<-EOC
-----------------------------
[#{Rails.env}] 新しいご意見が来ました。

▼誕生日の人
#{remind.birthday_user_id}
▼いつ
#{remind.remind_date}
  EOC

  Slack.chat_postMessage text: text, username: "Opinion Notifier", channel: "#general"
  end
end

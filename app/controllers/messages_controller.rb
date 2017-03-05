class MessagesController < ApplicationController
  def new
    @user = current_user
    @message = Message.new
    @birthday_user = User.find(params[:user_id])
  end
  def create
    birthday_user_id = params[:user_id]
    @birthday_user = User.find(birthday_user_id)
    @message = Message.new(message_params)
    @message.save
    Slack.chat_postMessage text: "#{@birthday_user.last_name}さんに以下の誕生日メッセージを送信しました！\n-----------------------------------------\n#{@message.body}", username: "誕生日メッセージBot", channel: "#general"
    redirect_to :root
  end

  private

  def message_params
    params.require(:message).permit(:user_id, :birthday_user_id, :body, :image)
  end
end

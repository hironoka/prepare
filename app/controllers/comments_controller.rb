class CommentsController < ApplicationController
  def create
    user = User.find(params[:user_id])
    Comment.create(comment_params)
    Slack.chat_postMessage text: "すごすぎでしょこれ", username: "Railsアプリくん", channel: "#general"
    redirect_to user_path(params[:user_id])
  end

private

  def comment_params
    params.require(:comment).permit(:user_id, :birthday_user_id, :body, :image)
  end
end

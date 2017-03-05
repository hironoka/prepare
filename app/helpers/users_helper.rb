module UsersHelper
  def user_comments_result(user)
    if user.id == current_user.id
      content_tag :h4, '閲覧権限はありません♡'
    else
      render partial: 'user_comments'
    end
  end
end

class RemindsController < ApplicationController

  def create
    Remind.create(remind_params)
    redirect_to :root
  end

  private

  def remind_params
    params.require(:remind).permit(:user_id, :birthday_user_id, :remind_date)
  end

end

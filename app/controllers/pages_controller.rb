class PagesController < ApplicationController
  def home
    @current_user_role = current_user.role
    if @current_user_role == "mentee"
     @connection = current_user.mentee.connection
    # @role = mentee || mentor
    else
      @connection = current_user.mentor.connection
    end

  end

  def ui_kit
  end

  def onboarding
  end

  def dashboard
   @user = current_user
  end
end

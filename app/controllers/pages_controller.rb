class PagesController < ApplicationController
  def home
    @current_user_role = current_user.role
    if @current_user_role == "mentee"
     @connections = current_user.mentee.connections
    # @role = mentee || mentor
    else
      @connections = current_user.mentor.connections
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

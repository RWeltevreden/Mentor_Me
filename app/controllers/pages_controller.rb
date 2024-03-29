class PagesController < ApplicationController
  def home
    @current_user_role = current_user.role
    if @current_user_role == "mentee"
     @connection = current_user.mentee.connection
     @random_mentors = Mentor.all.sample(3)
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
   @mentee = current_user.mentee
   @token = form_authenticity_token
  end

  def certificate
    # @connection = current_user.mentor.connection
    @connection = current_user.mentee.connection
  end
end

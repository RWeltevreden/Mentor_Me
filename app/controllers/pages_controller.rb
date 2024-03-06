class PagesController < ApplicationController
  def home
    # @current_user = User.role
    # @role = mentee || mentor
  end

  def ui_kit
  end

  def onboarding
  end

  def dashboard
   @user = current_user
  end
end

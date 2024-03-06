class PagesController < ApplicationController
  def home
  end

  def ui_kit
  end

  def onboarding
  end

  def dashboard
   @user = current_user
  end
end

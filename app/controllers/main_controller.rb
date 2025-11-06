class MainController < ApplicationController
  def index
    if Current.user
      @current_user = Current.user
    end
    flash.keep
  end
end 
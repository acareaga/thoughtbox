class HomeController < ApplicationController

  def show
    if current_user
      redirect_to links_path
    end
  end
end

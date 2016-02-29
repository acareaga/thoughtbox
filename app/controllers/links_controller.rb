class LinksController < ApplicationController

  def new
    @link = Link.new
  end

  def create
    @link = Link.new(link_params)
  end

  def index
    @links = Link.all
  end

  private

  def link_params
    params.require(:link).permit(:title, :url, :read)
  end
end

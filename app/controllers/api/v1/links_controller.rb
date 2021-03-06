class Api::V1::LinksController < ApplicationController
  respond_to :json

  def index
    respond_with current_user.links
  end

  def create
    if valid(params[:url])
      respond_with current_user.links.create(link_params), location: nil
    end
  end

  def update
    respond_with current_user.links.update(params[:id], link_params)
  end

  def destroy
    respond_with current_user.links.delete(params[:id]), nil
  end

  private

  def link_params
    params.permit(:title, :url, :read)
  end
end

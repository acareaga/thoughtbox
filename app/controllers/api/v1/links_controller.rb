class Api::V1::LinksController < ApplicationController
  respond_to :json

  def index
    respond_with current_user.links
  end

  def create
    respond_with Link.create(link_params)
  end

  def update
    respond_with Link.update(params[:id], link_params)
  end

  def destroy
    respond_with Link.delete(params[:id]), nil
  end

  private

  def link_params
    params.permit(:title)
  end
end

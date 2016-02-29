# class LinksController < ApplicationController
#
#   def new
#   end
#
#   def create
#     @link = Link.new(link_params)
#     if @link.save
#       flash[:notice] = "Link Added!"
#       redirect_to links_path
#     else
#       flash[:notice] = "Invalid submission. Please try again."
#       redirect_to links_path
#     end
#   end
#
#   def index
#     if current_user
#       @link = Link.new
#       @links = Link.all
#     else
#       redirect_to login_path
#     end
#   end
#
#   private
#
#   def link_params
#     params.require(:link).permit(:title, :url, :read, :user_id)
#   end
# end

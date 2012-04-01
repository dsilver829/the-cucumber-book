class SearchController < ApplicationController
  respond_to :html, :json
  def show
    @messages = Message.like(params[:query])
    respond_with(@messages)
  end
end
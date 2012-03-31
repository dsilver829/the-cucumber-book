class SearchController < ApplicationController
  def show
    @messages = Message.like(params[:query])
  end
end
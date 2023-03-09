class ListsController < ApplicationController
  before_action :set_list
  # list index
  # show list
  # new list
  # bookmark movie in list

  def index
    @lists = List.all
  end

  def show
  end

  private

  def set_list
    @list = List.find(params[:id])
  end
end

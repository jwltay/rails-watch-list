class ListsController < ApplicationController
  # list index
  # show list
  # new list
  # bookmark movie in list

  def index
    @lists = List.all
  end
end

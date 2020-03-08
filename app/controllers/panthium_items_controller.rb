class PanthiumItemsController < ApplicationController
  def index
    @panthiumitems = PanthiumItem.all?
  end
end

class SidebarController < ApplicationController
  def index
    @items = [ "foo", "bar" ]
  end
end

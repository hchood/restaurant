class MenuItemsController < ApplicationController

  def index
    @menu_items = MenuItem.all
  end

  def show
    @menu_item = MenuItem.find(params[:id])
  end

  def new
    @menu_item = MenuItem.new
  end

  def create
    @menu_item = MenuItem.new(menu_item_params)
    if @menu_item.save
      redirect_to menu_item_path(@menu_item)
    else
      render 'new'
    end
  end

  private
  def menu_item_params
    params.require(:menu_item).permit(:name, :description, :price_in_cents)
  end
end

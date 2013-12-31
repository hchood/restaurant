class MenuItemsController < ApplicationController

  def show
    @menu_item = MenuItem.find(params[:id])
  end

  def new
    @menu_item = MenuItem.new
  end

  def create
    # params[:menu_item][:price_in_cents] = params[:menu_item][:price_in_cents].to_i

    @menu_item = MenuItem.new(menu_item_params)
    @menu_item.save
    redirect_to menu_item_path(@menu_item)
  end

  private
  def menu_item_params
    params.require(:menu_item).permit(:name, :description, :price_in_cents)
  end
end

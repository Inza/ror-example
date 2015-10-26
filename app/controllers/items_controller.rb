class ItemsController < ApplicationController
  before_filter :load_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def show

  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new item_params

    if @item.save
      redirect_to items_path, notice:'Item has been successfully saved.'
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    if @item.update item_params
      redirect_to items_path, notice:'Item has been successfully updated.'
    else
      render 'edit'
    end
  end

  def destroy
    if @item.destroy
      redirect_to items_path, notice:'Item has been successfully deleted.'
    else
      redirect_to items_path, alert:'Item cannot be deleted.'
    end
  end

private
  def load_item
    @item = Item.find params[:id]
  end

  def item_params
    params.require(:item).permit(:name, :cost, :note)
  end
end

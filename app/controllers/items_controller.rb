class ItemsController < ApplicationController

  before_action :count_items, only: [:index]

  def index
    @items = Item.sorted.paginate(page: params[:page], per_page: 10)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_basic_params)
    if @item.save
      flash[:notice] = "#{@item.name} Successfully created"
      redirect_to items_path
    else
      flash.now[:error] = @item.errors.full_messages.to_sentence
      render 'new'
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if @item.update(item_basic_params)
      flash[:notice] = "#{@item.name} Successfully Update"
      redirect_to (item_path(@item))
    else
      flash[:error] = "Error updating"
      render 'edit'
    end
  end

  def delete
    @item = Item.find(params[:id])
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    flash[:notice] = "#{@item.name} Deleted Successfully"
    redirect_to items_path
  end

  private

  def item_basic_params
    params.require(:item).permit(:name, :item_type, :item_description)
  end

  def count_items
    @total_items = Item.all.count
  end
end

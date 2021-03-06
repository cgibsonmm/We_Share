class ItemsController < ApplicationController

  before_action :count_items, only: [:index]
  before_action :item_owner?, only: [:edit]
  before_action :authenticate_user!, except: [:index]

  def index
    @items = Item.sorted.paginate(page: params[:page], per_page: 10)
  end

  def new
    @item = current_user.items.build
  end

  def create
    @item = current_user.items.build(item_basic_params)
    if @item.save
      flash[:notice] = "#{@item.name} Successfully created"
      redirect_to items_path
    else
      flash.now[:alert] = @item.errors.full_messages.to_sentence
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
      flash[:alert] = "Error updating"
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
    params.require(:item).permit(:user_id, :name, :item_type, :item_description, :image)
  end

  def count_items
    @total_items = Item.all.count
  end

  def item_owner?
    @item = Item.find(params[:id])
    unless user_signed_in? && @item.user_id == current_user.id
      flash[:notice] = "You do not own this item"
      render 'show'
    end
  end
end

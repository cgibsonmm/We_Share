class ItemsController < ApplicationController
  def index
    @items = Item.all.paginate(page: params[:page], per_page: 10)
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    if @item.save(params(item_basic_params))
      flash[:notice] = "#{@item.name} Successfully created"
      redirect_to items_path
    else
      flash[:notice] = "Error creating #{@item.name}"
      render 'new'
    end
  end 

  def show
    @item = Item.find(params[:id])
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private

  def item_basic_params
    params.require(:item).permit(:name, :item_type, :item_description)
  end
end

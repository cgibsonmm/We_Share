class ItemLoansController < ApplicationController
  before_action :find_item, only: [:new, :create]
  before_action :find_owner, only: [:new, :create]
  before_action :find_user, only: [:new, :create]

  def index
    @loans = ItemLoan.all
  end

  def show
    @loan = ItemLoan.find(params[:id])
  end

  def new
    @item_loan = ItemLoan.new
  end

  def create
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

  def find_item
    @item = Item.find(params[:item_id])
  end

  def find_owner
    @owner = User.find(@item.user_id)
  end

  def find_user
    @user = current_user
  end


end

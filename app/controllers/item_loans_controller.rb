class ItemLoansController < ApplicationController
  def index
    @loans = ItemLoan.all
  end

  def show
    @loan = ItemLoan.find(params[:id])
  end

  def new
    @item = Item.find(params[:id])
    @loan = ItemLoan.new
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


end

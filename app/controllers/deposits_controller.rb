class DepositsController < ApplicationController

  def index
    @deposits = Deposit.all
  end

  def show
    @deposit = Deposit.find(params[:id])
  end 

  def new
    @deposit = Deposit.new
  end

  def edit
    @deposit = Deposit.find(params[:id])
  end

  def create
    @deposit = Deposit.new(deposit_params)
    if @deposit.save
      redirect_to @deposit
    else
      render 'new'
    end
  end

  def update
    @deposit = Deposit.find(params[:id])

    if @deposit.update(deposit_params)
      redirect_to deposit_path(@deposit)
    else
      render 'edit'
    end
  end

  def destroy
    @deposit = Deposit.find(params[:id])
    @deposit.destroy

    redirect_to deposits_path

  end

  private
    def deposit_params
      params.require(:deposit).permit(:title, :amount_per_month)
    end

end

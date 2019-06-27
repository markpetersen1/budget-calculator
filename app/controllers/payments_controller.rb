class PaymentsController < ApplicationController

  def index
    @payments = Payment.all
  end

  def show
    @payment = Payment.find(params[:id])
  end

  def new
    @payment = Payment.new
  end

  def edit
    @payment = Payment.find(params[:id])
  end

  def create
    #render plain: params.inspect ##use this for checking params?

    @payment = Payment.new(payment_params) #Payment (with capital p) refers to class from the MODEL

    if @payment.save #saves model to database
      redirect_to @payment #redirects to show action
    else
      render 'new' #use render so that @payment object is passed back to new template when rendered
    end
  end

  def update
    @payment = Payment.find(params[:id])

    if @payment.update(payment_params)
      redirect_to @payment
    else
      render 'edit'
    end
  end

  def destroy
    @payment = Payment.find(params[:id])
    @payment.destroy

    redirect_to payments_path
  end

  private
    def payment_params
      params.require(:payment).permit(:title, :amount_per_month)
    end

end

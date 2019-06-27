class BalanceController < ApplicationController

  def index
    @payments = Payment.all
    @deposits = Deposit.all
    @net_total = 0;
  end

end

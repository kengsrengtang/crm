class CustomersController < ApplicationController
  def index
    @customers = CustomerService.search params[:search]
  end
end

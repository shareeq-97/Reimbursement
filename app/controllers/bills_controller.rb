class BillsController < ApplicationController
  before_action :set_bill, only: %i[show edit update destroy]

  def index
    @bills = Bill.all
  end

  def show
  end

  def new
    @bill = Bill.new
  end

  def create
    @bill = Bill.new(bill_params)

    if @bill.save
      redirect_to @bill
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @bill.update(bill_params)
      redirect_to @bill
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @bill.destroy

    redirect_to bills_path, status: :see_other
  end

  private

  def set_bill
    @bill = Bill.find(params[:id])
  end

  def bill_params
    params.require(:bill).permit(:amount, :bill_type, :employee_id)
  end
end

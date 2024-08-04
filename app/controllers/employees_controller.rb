class EmployeesController < ApplicationController
  before_action :set_employee, only: %i[show edit update destroy]

  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to @employee, notice: 'Employee was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @employee.update(employee_params)
      redirect_to @employee, notice: 'Employee was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    if @employee.bills.any?
      redirect_to @employee, alert: 'Cannot delete employee with associated bills.'
    else
      @employee.destroy
      redirect_to employees_path, status: :see_other, notice: 'Employee was successfully destroyed.'
    end
  end

  private

  def set_employee
    @employee = Employee.find(params[:id])
  end

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :email, :designation, :department_id)
  end
end

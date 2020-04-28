class EmployeesController < ApplicationController
  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
    @employee = Employee.find_by(employee_params)
    @employee.update

    redirect_to employee_path(@employee)
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title)
  end
end

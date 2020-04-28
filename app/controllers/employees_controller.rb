class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find_by(id: params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)
    if @employee.valid?
      @employee.save
      flash[:success] = "Employee was created!"
      redirect_to employee_path(@employee)
    else
      flash[:errors] = @employee.errors.messages
      render :new
    end
  end

  def edit
    @employee = Employee.find_by(id: params[:id])
  end

  def update
    @employee = Employee.find_by(id: params[:id])
    if @employee.update(employee_params)
      flash[:success] = "Employee was updated!"
      redirect_to employee_path(@employee)
    else
      flash[:errors] = @book.errors.messages
      render :edit
    end
  end

  private

  def employee_params
    params.require(:employee).permit(
      :first_name,
      :last_name,
      :alias,
      :title,
      :office,
      :img_url,
      :dog_id
    )
  end

end

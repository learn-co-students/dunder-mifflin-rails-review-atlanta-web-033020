class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update, :destroy]
    def index 
        @employees = Employee.all
    end
    def show 

    end
    def edit 

    end
    def update
        @employee.update(employee_params)
        redirect_to employee_path(@employee)
    end
    def new 
        @dogs = Dog.all 
        @employee = Employee.new(employee_params)
    end 
    def create 
        @employee = Employee.create(employee_params)
        redirect_to employee_path(@employee)
    end
    def destroy
        @employee.destroy
        redirect_to employees_path
    end

    private
    def employee_params
        params.require(:employee).permit(:first_name,:last_name,:alias,:title,:office,:img_url,:dog_id)
      end

    def find_employee 
        @employee = Employee.find_by(id: params[:id])
    end
end

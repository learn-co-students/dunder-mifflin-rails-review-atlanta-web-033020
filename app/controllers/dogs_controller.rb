class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def sorted
    @dogs = Dog.sorted
  end

  def show
    @dog = Dog.find_by(id: params[:id])
  end

  

end

class DogsController < ApplicationController
  def index
  	@dogs = Dog.all

  	@users = User.all
  end

  def create
  	@dog = Dog.new user_params
  	if @dog.save
	  	redirect_to action: 'index'
	else
		render 'new'
	end
  end

  def new
  	@dog = Dog.new
  end

  def show
  	@dog = Dog.find(params[:id])
  end

  private
  def user_params
  	params.require(:dog).permit(:name, :age) #params must have dog key and only passes back the name and age key:value pairs
  end
end

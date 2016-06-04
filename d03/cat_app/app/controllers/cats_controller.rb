class CatsController < ApplicationController

  # this is called middle-ware, which says before you go through this route, run this method
  # which, in this case, is the set_cat method
  before_action :set_cat, only: [:show, :edit, :update, :destroy]

  def index
    @cats = Cat.all
  end

  def show
  end

  def new
    # used for rendering the new page
    @cat = Cat.new
  end

  # used for actually taking the action we want, which is create a new cat in this case
  def create
    @cat = Cat.new(cat_params)
    if @cat.save # this actually runs the cat.save function and then asks whether or not it is true or false
      redirect_to cat_path(@cat)
    else
      render :new
    end
  end

  def edit
    #for rendering the EDIT CAT page template
  end

  def update
    #SAVE the edited cat to the database
    #if we can succesfully update the cat attributes, take us to the edit_cat_path view
    if @cat.update_attributes(cat_params)
      redirect_to cat_path(@cat)
    else
      redirect_to edit_cat_path(@cat)
    end
  end

  def destroy
    #remove the cat from the database
    if @cat.destroy
      redirect_to root_path
    else
      redirect_to cat_path(@cat)
    end
  end

private
  def set_cat
    @cat = Cat.find(params[:id])
  end

  def cat_params
    (params.require(:cat).permit(:name, :age, :gender, :breed, :indoor, :image))
  end
end

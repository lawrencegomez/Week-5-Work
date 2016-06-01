class CatsController < ApplicationController
  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.find(params[:id])
  end

  def new
    @cat = Cat.new
  end

  def create
    @cat = Cat.new(cat_params)
    if @cat.save
      redirect_to cat_path(@cat)
    else
      render :new
    end
  end

  def edit
    #for rendering the EDIT CAT page template
    @cat = Cat.find(params[:id])
  end

  def update
    #SAVE the edited cat to the database
    @cat = Cat.find(params[:id])
    #if we can succesfully update the cat attributes, take us to the edit_cat_path view
    if @cat.update_attributes(cat_params)
      redirect_to cat_path(@cat)
    else
      redirect_to edit_cat_path(@cat)
    end
  end

  def destroy
    #remove the cat from the database
    @cat = Cat.find(params[:id])
    if @cat.destroy
      redirect_to root_path
    else
      redirect_to cat_path(@cat)
    end
  end

private
  def cat_params
    (params.require(:cat).permit(:name, :age, :gender, :breed, :indoor, :image))
  end
end

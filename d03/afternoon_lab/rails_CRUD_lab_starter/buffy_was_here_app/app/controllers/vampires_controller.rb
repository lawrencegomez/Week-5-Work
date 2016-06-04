class VampiresController < ApplicationController
  #this before_action will set the vampire for show, edit, update, and destroy - complete the set_vampire private method at the bottom of this controller
  before_action :set_vampire, only: [:show, :edit, :update, :destroy]

  def index
    # add an instance variable to respresent all vampires in your db
    @vampires = Vampire.all
  end

  def show
  end

  def new
    # add an instance variable to represent one new vampire
    @vampire = Vampire.new
  end

  def edit
  end

  def create
    # add an instance variable to represent one new vampire and add vampire_params as the argument
    @vampire = Vampire.new(vampire_params)

    # add a conditional that will redirect to the new vampire's show page if it saves successfully, but will render the new form if it doesn't
    if @vampire.save
      redirect_to vampire_path(@vampire)
    else
      render :new
    end
  end

  def update
    # add a conditional that will redirect to the vampire's show page if it updates successfully, but will render the edit form if it doesn't
    if @cat.update_attributes(vampire_params)
      redirect_to vampire_path(@vampire)
    else
      redirect_to edit_vampire_path(@vampire)
    end
  end

  def destroy
    # destroy the vampire
    # then redirect to the vampires index
    if @vampire.destroy
      redirect_to vampires_path(@vampire)
    else
      redirect_to vampire_path(@vampire)
    end
  end

  private
    def set_vampire
      # use the :id to find one vampire in the database
      @vampire = Vampire.find(params[:id])
    end

    def vampire_params
      # whitelist all of the vampire attributes so that your forms work!
      (params.require(:vampire).permit(:name, :age, :sire, :staked))
    end
  end

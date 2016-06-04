class BlurbsController < ApplicationController
  before_action :authorize

  def index
    @blurbs = Blurb.all
  end

  def create
    @blurb = Blurb.new(blurb_params)
    @blurb.user = current_user
    if @blurb.save
      redirect_to blurb_path(@blurb)
    else
      redirect_to new_blurb_path
    end
  end

  def new
    @blurb = Blurb.new
  end

  def edit
  end

  def show
    @blurb = Blurb.find(params[:id])
  end

  def update
  end

  def destroy
  end

private
  def blurb_params
      params.require(:blurb).permit(:title, :body)
  end

end

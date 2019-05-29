class PicturesController < ApplicationController
  before_action :set_picture, only: [:show, :edit, :update]

  def index
    @pictures = Picture.all
    render json: @pictures
  end

  def show
  end

  def new
    @picture = Picture.new
  end

  def create
    @picture = Picture.new(picture_params)
    if @picture.save
      redirect_to picture_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @picture.update_attributes(picture_params)
      redirect_to picture_path(@picture)
    else
      render :edit
    end
  end

  private

  def picture_params
    params.require(:picture).permit(:title, :body, :image)
  end

  def set_picture
    @picture = Picture.find(params[:id])
  end
end

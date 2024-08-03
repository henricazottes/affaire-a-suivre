# frozen_string_literal: true

# Updates controller
class UpdatesController < ApplicationController
  def index
    @updates = Update.all
  end

  def show
    @update = Update.find_by(slug: params[:slug])
  end

  def new
    @update = Update.new
  end

  def create
    @update = Update.new(update_params)

    if @update.save
      redirect_to @update
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @update = Update.find_by(slug: params[:slug])
  end

  def update
    @update = Update.find_by(slug: params[:slug])

    if @update.update(update_params)
      redirect_to @update
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def update_params
    params.require(:update).permit(:title, :slug, :link, :date, :description)
  end
end

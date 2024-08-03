# frozen_string_literal: true

# Trials controller
class TrialsController < ApplicationController
  def index
    @trials = Trial.all
  end

  def show
    @trial = Trial.find_by(slug: params[:slug])
  end

  def new
    @trial = Trial.new
  end

  def create
    @trial = Trial.new(trial_params)

    if @trial.save
      redirect_to @trial
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @trial = Trial.find_by(slug: params[:slug])
  end

  def update
    @trial = Trial.find_by(slug: params[:slug])

    if @trial.update(trial_params)
      redirect_to @trial
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def trial_params
    params.require(:trial).permit(:title, :slug, :description, person_ids: [])
  end
end

# frozen_string_literal: true

# People controller
class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find_by(slug: params[:slug])
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to @person
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @person = Person.find_by(slug: params[:slug])
  end

  def update
    @person = Person.find_by(slug: params[:slug])

    if @person.update(person_params)
      redirect_to @person
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def person_params
    params.require(:person).permit(:name, :slug, :x_handle, :wikipedia_url, :description)
  end
end

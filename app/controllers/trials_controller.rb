# frozen_string_literal: true

# Trials controller
class TrialsController < ApplicationController
  def index
    @trials = Trial.all
  end

  def show
    @trial = Trial.find_by(slug: params[:slug])
  end
end

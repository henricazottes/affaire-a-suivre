# frozen_string_literal: true

# Trials controller
class TrialsController < ApplicationController
  def index
    @trials = Trial.all
  end
end

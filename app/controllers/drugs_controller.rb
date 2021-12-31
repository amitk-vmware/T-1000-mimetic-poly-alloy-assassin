class DrugsController < ApplicationController

  def index
    @drugs = Drug.all
  end

  def new
    @drug = Drug.new
  end

  def create
    binding.pry
    @drug = Drug.new(permit_params)
    if @drug.save
      redirect_to drugs_path
    else
      render :new
    end
  end

  def update
  end

  private

  def permit_params
    params.require(:drug).permit([:name, :ailment, side_effects: []])
  end
end

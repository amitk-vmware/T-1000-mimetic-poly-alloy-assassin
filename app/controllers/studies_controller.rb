class StudiesController < ApplicationController

  def index
    @studies = Study.all
  end

  def new
    @study = Study.new
    # @phases = Stu
  end
  def create
    @study = Study.new(permit_params)
    if @study.save
      redirect_to(studies_path)
    else
      render :new
    end
  end

  private

  def permit_params
    params.require(:study).permit([:name, :phase, :drug_id])
  end
end

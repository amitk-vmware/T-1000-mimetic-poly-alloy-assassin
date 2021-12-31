class StudiesController < ApplicationController

  def index
    @studies = Study.all
  end

  def new
    @study = Study.new
  end

  def push
    params.require(:study_ids)
    result = PushStudy.new(params[:study_ids]).process
    
    count = params[:study_ids].count
    if result
      flash[:success] =  "#{count} #{count == 1 ? 'study' : 'studies'} pushed successfully"
    else
      flash[:error] = "Failed to push studies"
    end
    redirect_to studies_path
  end
  
  def create
    @study = Study.new(permit_params)
    binding.pry
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

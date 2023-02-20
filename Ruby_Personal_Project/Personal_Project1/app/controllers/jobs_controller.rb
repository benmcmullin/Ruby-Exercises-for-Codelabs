class JobsController < ApplicationController
  def index
    @jobs = Job.page(params[:page]).per(25)
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(params.require(:job).permit(:title, :company, :url)) 
    if @job.save
      redirect_to root_path
    else
      render "new"
    end
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    flash[:success] = "The job posting was successfully deleted."
    redirect_to root_path
  end

  def show
    #@job = Job.find(params[:id])
  end

  def update
    updating_job = Job.find(params[:id])
    if updating_job.update(title: params[:job][:company])
      redirect_to job_path(updating_job)
    else
      redirect_to edit_job_path(updating_job)
    end
  end
end

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

  def edit
    @job = Job.find(params[:id])
  end

  def destroy
    @job = Job.find(params[:id])
    @job.destroy
    flash[:success] = "The job posting was successfully deleted."
    redirect_to root_path
  end

  def show
    @job = Job.find(params[:id])
  end

  def update
    @job = Job.find(params[:id])
    @job.update(job_params)
    redirect_to root_path
  end


  private 

  def job_params
    params.require(:job).permit(:title, :company, :url)
  end
end

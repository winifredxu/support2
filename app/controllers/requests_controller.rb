class RequestsController < ApplicationController
  before_action :find_request, only: [:edit, :update, :destroy]

  def new
    @req = Request.new
  end

  def create
    @req = Request.new request_params
    if @req.save
      redirect_to requests_path
    else
      render :new #render "new.html.erb"
    end
  end

  def edit
    #@req set in before_action
  end

  def update
    #@req set in before_action
    if @req.update request_params
      redirect_to requests_path
    else
      render :edit
    end
  end 

  def index
    @req_lists = Request.all 
  end

  def destroy
    #@req set in before_action
    @req.destroy
    redirect_to requests_path, notice: "Request destroyed successfully!"
  end

  private

  def find_request
    @req = Request.friendly.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:name, :email, :dept_id, :msg, :done)
  end

end

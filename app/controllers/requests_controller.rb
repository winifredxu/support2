class RequestsController < ApplicationController
  before_action :find_request, only: [:edit, :update, :destroy]

  def new
    @dept = Dept.first
    @req = @dept.requests.new
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
      redirect_to requests_path(search: params[:search])
    else
      render :edit
    end
  end 

  def index
    if params[:search]
      # @req_lists = Request.search(params[:search]).order("created_at DESC")
      @req_lists = Request.search(params[:search]).order("done ASC").paginate(:page => params[:page], per_page: 10)
    else
      @req_lists = Request.req_lists_order.paginate(:page => params[:page], per_page: 10)
    end
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

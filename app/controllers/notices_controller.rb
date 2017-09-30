class NoticesController < ApplicationController
  load_and_authorize_resource

  def index
    @notices = Notice.all
  end

  def show
    
  end

  def new
    @notice = Notice.new
  end

  def create
    @notice = Notice.new(notice_params)

    if @notice.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @notice = Notice.find(params[:id])
  end

  def update
    @notice = Notice.find(params[:id])

    if @notice.update(notice_params)
      redirect_to [:admin, @notice]
    else
      render 'edit'
    end
  end

  def destroy
    @notice = Notice.destroy(params[:id])
    redirect_to root_path
  end

  private

  def notice_params
    params.require(:notice).permit(:title, :content, :contact_details, :user_id, :category_id)
  end
end

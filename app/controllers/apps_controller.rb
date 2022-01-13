class AppsController < ApplicationController
  before_action :set_user, only: [ :show, :edit, :destroy, :update]
  def index
    @app = App.all
  end

  def new
    @app = App.new
  end

  def show
  end

  def create
    @app = App.new(post_params)
    if @app.save
      respond_to do |format|
        format.html {redirect_to app_url(@app) }
      end
    else
      render :new
    end 
  end

  def edit

  end

  def update
    if @app.update(post_params)
      respond_to do |format|
        format.html {redirect_to app_url(@app) }
      end
    else
      render :edit
    end
  end

  def destroy
    @app.destroy
    
  end
  private
  def set_user
    @app = App.find(params[:id])
  end
  def post_params
    params.require(:app).permit(:name, :date)
  end
end

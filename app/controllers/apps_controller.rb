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
      # redirect_to notice:"succsessful"
    else
      render :new
    end 
  end

  def edit

  end

  def update
    if @app.update(post_params)
      # redirect_to  notice:"succsessful"
    
    else
      render :edit
    end
  end

  def destroy
    @app.destroy
    #  redirect_to  notice:"destroy ----"
  end
  private
  def set_user
    @app = App.find(params[:id])
  end
  def post_params
    params.require(:app).permit(:name, :date)
  end
end

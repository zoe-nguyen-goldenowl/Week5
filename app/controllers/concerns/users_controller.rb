class Userclass <ApplicationController
    before_action :set_user, only: [:show, :edit, :destroy, :update]
    def set_user
        @user = App.find(params[:id])
    end

    def index
        @user =App.all
    end

    def new
        @app = App.new
    end

    def show
    end

    def post_gram
        params.require(:app).permit(:name, :date)
    end

    def create
        @user = App.new(post_gram)
        if @user.save
            redirect_to users_path notice:"succsessful"
        else
            render :new,
        end 
    end

    def edit

    end

    def update
        if @user.update(post_gram)
            redirect_to users_path notice:"succsessful"
        else
            render :edit,
        end
    end

    def destroy
        @user.destroy
        redirect_to users_path notice:"destroy ----"
    end
    
end

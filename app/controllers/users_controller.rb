class UsersController < ApplicationController

    def new
        @user = User.new
      end

    def create
        @user = User.new(user_params)

        respond_to do |format|
            if @user.save
                redirect_to new_user_path
            else
                render :new, status: :unprocessable_entity
            end
        end
    end

    def edit
        @user = User.find(params[:id])
    end    

    def update
        @user = User.find(params[:id]) 
        respond_to do |format|
            if @user.update(user_params)
                redirect_to @user
            else
                render :edit, status: :unprocessable_entity
            end
        end
    end

    def user_params
        params.require(:user).permit(:email, :username, :password)
      end

end

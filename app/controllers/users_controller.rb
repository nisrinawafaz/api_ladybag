class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end

    def show
        @users = User.find(params[:id])
        render json: @users
    end

    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        render json: {status: :ok}
      else
        render json: { status: :unprocessable_entity }
      end
    end

      private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def user_params
        params.require(:user).permit(:username, :phone, :address)
      end
end

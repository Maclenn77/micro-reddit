module UserHelper
  def user_params
    params.require(:user).permit(:username, :email)
  end
end

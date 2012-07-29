class Admin::UsersController < AdminController
  respond_to :html, :json

  def index
    @users = User.all
  end

  def update
    @user = User.find(params[:id])
    @user.update_attributes(params[:user])
    respond_with @user
  end

end

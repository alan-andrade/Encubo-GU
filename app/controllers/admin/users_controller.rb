class Admin::UsersController < AdminController

  def index
    @users = User.all
  end

  # PUT toggle_access/:id
  def toggle_access
    @user = User.find(params[:user_id])
    @user.update_attributes({ active: !@user.active? })
    respond_to do |format|
      format.json { render json: { status: 200 } }
      format.html { redirect_to admin_users_path }
    end
  end

end

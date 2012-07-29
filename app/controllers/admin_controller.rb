class AdminController < ApplicationController
  before_filter :require_admin

  private

  def require_admin
    redirect_to root_url unless current_user.admin?
  end

end

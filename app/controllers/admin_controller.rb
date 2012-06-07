class AdminController < ApplicationController
  before_filter :require_admin
  layout 'application'

  private

  def require_admin
    unless current_user.admin?
      redirect_to root_url
    end
  end
end

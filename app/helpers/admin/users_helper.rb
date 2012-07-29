module Admin::UsersHelper

  def toggle_access_link_for(user)
    user.active? ?
      deactivate_access_link(user) :
      activate_access_link(user)
  end

  def activate_access_link(user)
    link_to 'Activar', admin_user_toggle_access_path(user) , class: 'btn btn-success'
  end

  def deactivate_access_link(user)
    link_to 'Desactivar', admin_user_toggle_access_path(user), class: 'btn btn-warning'
  end


end

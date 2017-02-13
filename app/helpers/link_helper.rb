module LinkHelper
  def link_help
    if admin_signed_in?
      link_to 'Sign Out', destroy_admin_session_path, method: :delete, class: 'ui basic negative button'
    else
      link_to 'Sign In', new_admin_session_path, class: 'ui basic positive button'
    end
  end
end
module AdminsHelper
  def link_help
    if admin_signed_in?
      link_to 'Sign Out', destroy_admin_session_path, method: :delete
    else
      link_to 'Sign In', new_admin_session_path
    end
  end
end

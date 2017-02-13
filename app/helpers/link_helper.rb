module LinkHelper
  def link_help
    if user_signed_in?
      link_to 'Sign Out', destroy_user_session_path, method: :delete, class: 'ui basic negative button'
    else
      link_to 'Sign In', new_user_session_path, class: 'ui basic positive button'
    end
  end
end

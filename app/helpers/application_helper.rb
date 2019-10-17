module ApplicationHelper
	def login_helper
		if current_user
      link_to 'Logout', destroy_user_session_path, method: :delete 
    else
      (link_to 'Log in', user_session_path) + 
      "<br />".html_safe +
      (link_to 'Register', new_user_registration_path)
    end
	end
end

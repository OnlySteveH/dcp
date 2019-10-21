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
	def source_helper
		if session[:source]
			greeting = "Thanks for visiting me from #{session[:source]}"
			content_tag(:p, greeting, class: "source-greeting")
		end
	end

	# def set_copyright
	# 	@copyright = Renderer.copyright("Big Dog Consultants Ltd", "All rights reserved")
	# end

	
	def copyright name, msg
		"&copy; #{Time.now.year} | <b>#{name}</b> | #{msg}".html_safe
	end
end
module ApplicationHelper
	def login_helper style
		if current_user
      link_to 'Logout', destroy_user_session_path, method: :delete, class: style
    else
      (link_to 'Log in', user_session_path, class: style) + 
      " ".html_safe +
      (link_to 'Register', new_user_registration_path, class: style)
    end
	end
	
	def source_helper
		if session[:source]
			greeting = "Thanks for visiting me from #{session[:source]}"
			content_tag(:p, greeting, class: "source-greeting")
		end
	end

	def copyright name, msg
		"&copy; #{Time.now.year} | <b>#{name}</b> | #{msg}".html_safe
	end
end
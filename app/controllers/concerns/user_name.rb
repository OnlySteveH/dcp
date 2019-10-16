module UserName
	# manages a non-logged-in user name
	extend ActiveSupport::Concern

	def user_name
		current_user ? current_user.first_name : "guest"
	end
end
class PagesController < ApplicationController
  def home
  	@posts = Blog.all
  	@skills = Skill.all
  	# call concern to manage user name - available in the view
  	@user_name = user_name
  end

  def about
  end

  def contact
  end
end

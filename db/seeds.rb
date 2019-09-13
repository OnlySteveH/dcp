10.times do |blog|
 	Blog.create!(
 		title: "My blog post #{blog}",
 		body: "A body for blog #{blog}. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur."
 	)
 	puts "Blog post #{blog} created"
end

5.times do |skill|
	Skill.create!(
		title: "Rails skill #{skill}",
		percent_utilised: 15
	)
	puts "Skill #{skill} created"
end

9.times do |portfolio_item|
	Portfolio.create!(
		title: "Portfolio tile #{portfolio_item}",
		subtitle: "My great service",
		body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.",
		main_image: "https://placehold.it/600x400",
		thumb_image: "https://placehold.it/350x200"
	)
	puts "Portfolio #{portfolio_item} created"
end
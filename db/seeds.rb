3.times do |topic|
	Topic.create!(
		title: "Topic#{topic}"
		)
end
puts "3 topics created"

10.times do |blog|
	Blog.create!(
		title:"my blog post #{blog}",
		body:"this is software development.many stages will be there in this.",
		topic_id :Topic.last.id
		)
end 
puts "10 blog posts created"

5.times do |skill|
	Skill.create!(
		title:"Rails #{skill}",
		percent:15
		)
end
puts "5 skills created"

9.times do |portfo|
	Portfo.create!(
		title:"Portfolio title: #{portfo}",
        subtitle:"my great service",
        body:"this is software development.many stages will be there in this.",
        main_image:"http://placehold.it/350*250",
        thumb_image:"http://placehold.it/350*150"
        )
end
puts "9 portfolio items created"

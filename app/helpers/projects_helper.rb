module ProjectsHelper
	def map_story_status(status)
		case status
		when 0
			"New"
		when 1
			"In Progress"
		when 2
			"Done"
		end
	end
end

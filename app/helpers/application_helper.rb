module ApplicationHelper
	# Returns the full title on a per-page basis.
	def full_title(page_title)
		unless '1.9'.respond_to?(:force_encoding)
			String.class_eval do
				begin
					remove_method :chars
				rescue NameError
				end
			end			
		end
		base_title = "Ruby on Rails Tutorial Sample App"
		if page_title.empty?
			base_title
		else
			"#{base_title} | #{page_title}"
		end
	end
end

class Time
	class Duration
		def Duration.vague(x)
			minutes = x / 60
			next_min = 1+minutes
			seconds = x % 60
			nearby = (seconds + 15) % 60
			d = case
				when x <= 20: "just now"
				when x <= 40: "about half a minute"
				when seconds < 5: "about #{minutes} minutes"
				when seconds > 55: "about #{next_min} minutes"
				when seconds >= 40: "almost #{next_min} minutes"
				when seconds <= 20: "just over #{minutes} minutes"
				else "about #{minutes} and a half minutes"
			end
			d.gsub!(%r{(^|\D)1 minutes}, '\1'+"1 minute")
			return d
		end
	end
end

				

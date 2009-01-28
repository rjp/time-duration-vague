class Time
	class Duration
		def Duration.vague(x)
			minutes = x / 60
			next_min = 1+minutes
			seconds = x % 60
			nearby = (seconds + 15) % 60
			case 
				when x < 30: "just now"
				when seconds > 45: "almost #{next_min} minutes"
				when seconds < 15: "just over #{minutes} minutes"
				else "about #{minutes} and a half minutes"
			end
		end
	end
end

				

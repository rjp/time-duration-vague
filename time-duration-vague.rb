class Time
	class Duration
		def Duration.vague(x)
			case 
				when x < 60: "#{x} second#{x!=1?'s':''}"
			end
		end
	end
end

				

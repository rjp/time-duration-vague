class Time
	class Duration
		def Duration.vague(x)
			seconds = x % 60
			d = case
				when x <= 20: "just now"
				when x <= 40: "about half a minute"
				when x <= 59: "about 1 minute"
			end
			return d unless d.nil?

			[
				[60, 'minutes'], [3600, 'hours']
			].each { |duration, name|
				units = x / duration
				next_min = 1+units
				pcage = self.ratio(x, duration)
				if (units > 0) or (units == 0 and pcage > 85) then
					d = case
						when pcage < 6: "about #{units} #{name}"
						when pcage <= 10: "just over #{units} #{name}"
                        when pcage < 35: "#{units} {name}"
                        when pcage > 35 && pcage < 65: "about #{units} and a half #{name}"
                        when pcage >= 65: "closer to #{next_min} #{name}"
						when pcage >= 90: "almost #{next_min} #{name}"
						when pcage > 94: "about #{next_min} #{name}"
					end
					d.gsub!(%r{(^|\D)1 #{name}}, '\1'+"1 #{name.chop}")
				end
			}	
			return d
		end

		def self.ratio(seconds, unit)
			offset = seconds % unit
			return 100 * offset.to_f / unit
		end
	end
end

				

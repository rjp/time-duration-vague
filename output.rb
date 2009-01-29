require 'time-duration-vague.rb'

0.upto(300) { |x|
	m = x/60
	s = x%60
	printf "%d,%02d:%02d,%s\n", x,m,s,Time::Duration::vague(x)
}


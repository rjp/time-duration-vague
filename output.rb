require 'time-duration-vague.rb'

[(0..300).to_a, (3500..3700).to_a].flatten.each { |x|
	m = x/60
	s = x%60
	v, p = Time::Duration::vague(x)
p=1
	printf "%d,%02d:%02d,%.2f,%s\n", x,m,s,p,v
}


require 'time'
require 'time-duration-vague'

start = Time.now.to_i
duration = ARGV[0].to_i || 0
step = ARGV[1].to_i || 10
loop {
	display = Time::Duration::vague(duration)
	m = duration / 60
	s = duration % 60

	printf "%3d:%02d %s\n", m, s, display
	duration = duration + step
}

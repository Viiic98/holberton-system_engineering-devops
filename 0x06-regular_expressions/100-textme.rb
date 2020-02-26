#!/usr/bin/env ruby
# Search in a log specific things
if ARGV[0]
    sender = ARGV[0].scan(/from:(.[0-9a-zA-Z]*)/)
    receiver = ARGV[0].scan(/to:(.[0-9]*)/)
    flags = ARGV[0].scan(/flags:(.[:\-0-9]*)/)
    print (sender[0][0]+","+receiver[0][0]+","+flags[0][0])
end
print "\n"

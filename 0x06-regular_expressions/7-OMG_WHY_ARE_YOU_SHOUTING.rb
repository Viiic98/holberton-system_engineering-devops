#!/usr/bin/env ruby
# Display only capital letters
if ARGV[0]
    for i in ARGV[0].scan(/[A-Z]/)
        print i
    end
end
print "\n"

#!/usr/bin/env ruby
# Print a word with a specific range of a letter
if ARGV[0]
    for i in ARGV[0].scan(/h[b]{0,1}tn/)
        print ARGV[0]
    end
end
print "\n"

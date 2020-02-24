#!/usr/bin/env ruby
# Regex with an specific length
if ARGV[0]
    for i in ARGV[0].scan(/hbt{2,5}n/)
        print i
    end
end
print "\n"
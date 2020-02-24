#!/usr/bin/env ruby
# Regex with an specific length
for i in ARGV[0].scan(/hbt{2,5}n/)
    print i
end
print "\n"
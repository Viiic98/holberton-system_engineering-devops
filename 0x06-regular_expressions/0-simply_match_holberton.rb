#!/usr/bin/env ruby
# Search if there is a regex in the argument
if ARGV[0]
    for i in ARGV[0].scan(/Holberton/)
        print i
    end
end
print "\n"

#!/usr/bin/env ruby
# Search if there is a regex in the argument
for i in ARGV[0].scan(/Holberton/)
    print i
end
print "\n"

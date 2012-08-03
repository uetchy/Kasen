#!/usr/bin/env ruby
# coding: utf-8

identify_path = "/usr/local/bin/identify"

line = STDIN.gets
space = line.scan(/^(\s+?)\w/)[0][0]
rel_path = line.scan(/url\("?(.+?)"?\)/)[0][0]

image_path = File.expand_path(File.join(File.dirname(ENV["CODA_FILEPATH"]), rel_path))
image_name = File.basename(image_path, ".*")
image_ext = File.extname(image_path)
image_dir = File.dirname(image_path)

width, height =  `#{identify_path} -verbose "#{image_path}" | grep Geometry | awk '{print $2}'`.strip.split(/x|\+/)
puts "\n#{space}width: #{width}px;"
print "#{space}height: #{height}px;"
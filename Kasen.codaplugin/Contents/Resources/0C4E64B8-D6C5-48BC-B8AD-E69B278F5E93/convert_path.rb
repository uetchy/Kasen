#!/usr/bin/env ruby
# coding: utf-8

require "find"

convert_path = "/usr/local/bin/convert"

image_path = File.expand_path(File.join(File.dirname(ENV["CODA_FILEPATH"]), STDIN.gets.strip))
image_name = File.basename(image_path, ".*")
image_ext = File.extname(image_path)
image_dir = File.dirname(image_path)

if image_name =~ /@2x/
  return nil unless [".png", ".jpg", ".jpeg", ".gif"].include?(image_ext.downcase)

  dst_name = "#{image_name.gsub(/@2x/, "")}#{image_ext}"
  dst_path = File.join(image_dir, dst_name)
  next if FileTest.exists? dst_path

  command = %{#{convert_path} -resize 50% -quality 100 "#{image_path}" "#{dst_path}"}
  system(command)
  print dst_name
end


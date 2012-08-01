#!/usr/bin/env ruby
# coding: utf-8

require "find"

convert_path = "/usr/local/bin/convert"

local_path = ENV["CODA_SITE_LOCAL_PATH"]
print "<ul>"
Find.find(local_path) do |path|
  image_name = File.basename(path, ".*")
  image_ext = File.extname(path)
  image_dir = File.dirname(path)
  
  if image_name =~ /@2x/
    next unless [".png", ".jpg", ".jpeg", ".gif"].include?(image_ext.downcase)
    
    dst_name = "#{image_name.gsub(/@2x/, "")}#{image_ext}"
    dst_path = File.join(image_dir, dst_name)
    if FileTest.exists? dst_path
      print "<li>#{dst_name} => Already created</li>"
      next
    end
    
    command = %{#{convert_path} -resize 50% -quality 100 "#{path}" "#{dst_path}"}
    system(command)
    print "<li>#{dst_name} => Has been created</li>"
  end
end
print "</ul>"


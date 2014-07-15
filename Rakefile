desc "Given a title as an argument, create a new post file"
task :write, [:title, :category] do |t, args|
  filename = "#{Time.now.strftime('%Y-%m-%d')}-#{args.title.gsub(/\s/, '-').downcase}.markdown"
  path = File.join("_posts", filename)
  if File.exist? path; raise RuntimeError.new("Won't clobber #{path}"); end
  File.open(path, 'w') do |file|
    file.write <<-EOS
---
date: #{Time.now.strftime('%Y-%m-%d %k:%M:%S')}
published: true
layout: post
slug: #{args.title.gsub(/\s/, '-').downcase}
title: #{args.title}
category: #{args.category}
---
EOS
    end
    puts "Now open #{path} in an editor."
end
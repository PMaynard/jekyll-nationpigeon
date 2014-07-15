# page.date
#

module Stats
  class Generator < Jekyll::Generator
    def generate(site)
		stats = site.pages.detect {|page| page.name == 'stats.html'}

    	site.posts.each do |post|
			stats.data['date'] = post.date
		end
    end
  end
end

# module Jekyll
#   class StatsRaw < Page; end

#   class StatsGenerator < Generator
#     priority :low
#     safe true

#     # Generates the raw stats of the site
#     #
#     # site - the site
#     #
#     # Returns nothing
#     def generate(site)
#       # require 'rss'

#       # # Create the rss with the help of the RSS module
#       # rss = RSS::Maker.make("2.0") do |maker|
#       #   maker.channel.title = site.config['name']
#       #   maker.channel.link = site.config['url']
#       #   maker.channel.description = site.config['description'] || "RSS feed for #{site.config['name']}"
#       #   maker.channel.author = site.config["author"]
#       #   maker.channel.updated = site.posts.map { |p| p.date }.max
#       #   maker.channel.copyright = site.config['copyright']

#       #   post_limit = (site.config['rss_post_limit'] - 1 rescue site.posts.count)

#       #   site.posts.reverse[0..post_limit].each do |post|
#       #     post = post.dup
#       #     post.render(site.layouts, site.site_payload)
#       #     maker.items.new_item do |item|
#       #       link = "#{site.config['url']}#{post.url}"
#       #       item.guid.content = link
#       #       item.title = post.title
#       #       item.link = link
#       #       item.description = post.excerpt
#       #       item.updated = post.date
#       #     end
#       #   end
#       # end

#       @dates = nil
#       site.posts.each do |post|
#       		@dates = post.date

#       # # File creation and writing
#       path = ensure_slashes(site.config['stats_path'] || "/")
#       name = site.config['stats_raw'] || "statsRaw"
#       full_path = File.join(site.dest, path)
#       ensure_dir(full_path)
#       File.open("#{full_path}#{name}", "w") { |f| f.write(@dates) }

#       # Add the feed page to the site pages
#       site.pages << Jekyll::StatsRaw.new(site, site.dest, rss_path, name)
#     end

#     private

#     # Ensures the given path has leading and trailing slashes
#     #
#     # path - the string path
#     #
#     # Return the path with leading and trailing slashes
#     def ensure_slashes(path)
#       ensure_leading_slash(ensure_trailing_slash(path))
#     end

#     # Ensures the given path has a leading slash
#     #
#     # path - the string path
#     #
#     # Returns the path with a leading slash
#     def ensure_leading_slash(path)
#       path[0] == "/" ? path : "/#{path}"
#     end

#     # Ensures the given path has a trailing slash
#     #
#     # path - the string path
#     #
#     # Returns the path with a trailing slash
#     def ensure_trailing_slash(path)
#       path[-1] == "/" ? path : "#{path}/"
#     end

#     # Ensures the given directory exists
#     #
#     # path - the string path of the directory
#     #
#     # Returns nothing
#     def ensure_dir(path)
#       FileUtils.mkdir_p(path)
#     end
#   end
# end
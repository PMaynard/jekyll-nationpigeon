module Jekyll
  class ArchivesGenerator < Generator
    def generate(site)
      years = {}
      site.posts.each do |post|
        if years.has_key?(post.date.year)
          years[post.date.year] << {"url"=>post.url, "title"=>post.title, "date"=>post.date}
        else
          years[post.date.year] = [{"url"=>post.url, "title"=>post.title, "date"=>post.date}]
        end
      end
      site.pages <<  ArchivesPage.new(site, site.source, "", "stats.html", years)
    end
  end

  class ArchivesPage < Page
    def initialize(site, base, dir, name, years)
      super(site, base, dir, name)
      self.data['years'] = years 
    end
  end
end
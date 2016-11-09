require 'rubygems'
require 'sitemap_generator'

SitemapGenerator::Sitemap.default_host = 'http://fine.leograce.com'
SitemapGenerator::Sitemap.create do
  add '/ifounds', changefreq: 'daily', priority: 0.9
end
SitemapGenerator::Sitemap.ping_search_engines # Not needed if you use the rake tasks

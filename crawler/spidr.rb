require 'spidr'
Spidr.site('https://ruby-china.org/jobs') do |spider|
  spider.every_html_page do |page|
    puts page.title
  end
end

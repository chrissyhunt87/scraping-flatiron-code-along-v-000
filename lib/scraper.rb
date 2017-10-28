require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper

  def get_page
    # Use Nokogiri + open-uri to grab whole HTML doc from page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
  end

  # Title: doc.css(".post").first.css("h2").text
  # Schedule: doc.css(".post").first.css(".date").text
  # Description: doc.css(".post").first.css("p").text


  def get_courses
    # Use CSS selector to grab HTML elements that contain a course
    # Returns collection of courses (XML elements)
  end

  def make_courses
    # Instantiates Course objects
    # Gives correct title, schedule, description attributes
  end

#   def print_courses
#   self.make_courses
#   Course.all.each do |course|
#     if course.title
#       puts "Title: #{course.title}"
#       puts "  Schedule: #{course.schedule}"
#       puts "  Description: #{course.description}"
#     end
#   end
# end

end

Scraper.new.get_page

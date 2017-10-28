require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper

    def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

  def get_page
    # Use Nokogiri + open-uri to grab whole HTML doc from page
  end

  def get_courses
    # Use CSS selector to grab HTML elements that contain a course
    # Returns collection of courses (XML elements)
  end

  def make_courses
    # Instantiates Course objects
    # Gives correct title, schedule, description elements
  end



end

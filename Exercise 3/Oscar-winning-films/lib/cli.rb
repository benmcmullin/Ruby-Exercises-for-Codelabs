# frozen_string_literal: true
require_relative "version.rb"
require_relative 'cli.rb'

class CLI
    def run 
        puts "Greetings!"
        menu
    end
end

def menu
    user_input = ""

    while user_input != "exit"
        puts "Request Oscar Award Winning Movies by year"
        puts "2015, 2014, 2013, 2012, 2011, 2010"
        puts "Please Enter a Year from the list above"
        user_input = gets.chomp
        break if user_input == "exit"
        Scraper.scrape_and_print_movies(user_input)
    end
end
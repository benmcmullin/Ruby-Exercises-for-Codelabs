# frozen_string_literal: true
require_relative "version.rb"
require_relative 'cli.rb'

class CLI
    def run
      User.seed
      signup_or_login
      menu
    end
  
    def menu
      user_input = ""
      while user_input != "exit"
        puts "Request movies Oscar Award Winning movies by year "
        puts "2015, 2014, 2013, 2012, 2011, 2010"
        puts "Please enter a year"
        user_input = gets.chomp
        break if user_input == 'exit'
        Scraper.scrape_and_print_movies(user_input)
      end
    end
  
    def signup_or_login
      user_input = ""
      while user_input != "exit"
        puts "Please enter login or signup"
        user_input = gets.chomp
        if user_input == "login"
          login
          break;
        elsif user_input == "signup"
          signup
          break;
        end
      end
    end
  
    def login
      authenticate = false
      while authenticate == false
        puts "Please enter your username."
        username = gets.chomp
        puts "Please enter your password"
        password = gets.chomp
  
        if User.authenticate_user(username, password)
          authenticate = true
          puts "Login successful."
        end
      end
    end
  
    def signup
      puts "Please enter a username"
      username = gets.chomp
      puts "Please enter a password"
      password = gets.chomp
      puts "Sign up successful. Please login."
      User.new(username, password)
      login
    end
  end
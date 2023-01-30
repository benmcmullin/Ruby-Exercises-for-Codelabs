class PagesController < ApplicationController
    def home

    end

    def about_us

    end
    
    def contact_us

    end

    def faq

    end

    def terms

    end

    def policy

    end

    def course_catalog

    end

    def testimonials

    end

    def blog
        @blog_array = [  "Introduction to Ruby on Rails",  
            "The Benefits of Pair Programming",  
            "How to Use Git for Version Control",  
            "A Guide to Test-Driven Development",  
            "The Future of Web Development: React vs Angular",  
            "Best Practices for Designing User Interfaces",  
            "How to Optimize Your Website for Speed and Performance",  
            "The Importance of Accessibility in Web Design",  
            "How to Build Secure Web Applications",  
            "Exploring the Latest Trends in Web Development"]
            puts @blog_array
            render 'blog'
    end
end
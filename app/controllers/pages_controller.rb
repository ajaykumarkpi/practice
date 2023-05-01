class PagesController < ApplicationController
  def home
    @posts=Blog.all
    @skills=Skill.all
    @rubies=Ruby.all
  end

  def about
    @skills = Skill.all 
  end

  def contact
  end
end

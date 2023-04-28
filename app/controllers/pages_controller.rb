class PagesController < ApplicationController
  def home
    @posts=Blog.all
    @skills=Skill.all
    @rubies=Ruby.all
  end

  def about
  end

  def contact
  end
end

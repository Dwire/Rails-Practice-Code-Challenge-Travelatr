class BloggersController < ApplicationController

  def index
    @bloggers = Blogger.all
  end 
  
end 
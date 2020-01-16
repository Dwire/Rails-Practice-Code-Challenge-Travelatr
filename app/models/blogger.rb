class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts


  def my_total_likes
    self.posts.reduce(0) do |acc, post|
      acc += post.likes
    end 
    # byebug
  end 

  # def my_total_likes
  #   like_counter = 0 

  #   self.posts.each do |post|
  #     like_counter += post.likes
  #   end 

  #   like_counter
  # end 


end

class Blogger < ApplicationRecord
  has_many :posts
  has_many :destinations, through: :posts


  def total_likes 
    self.posts.reduce(0) { |sum, acc| sum += acc.likes}
    
    # sum = 0 

    # self.posts.each do |post|
    #   sum += post.likes 
    # end 
    # sum
  end 

  def real_title=(name)
    self.title = name
  end 

  def featured_post
    self.posts.max_by { |post| post.likes }
  end 

end

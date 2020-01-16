class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end 

  def new 
    @post = Post.new

    @bloggers = Blogger.all
    @destinations = Destination.all
  end 

  def create
    post = Post.new(post_params)
    
    if post.save 
      redirect_to post_path(post.id)
    else
      flash[:my_sweet_errors] = post.errors.full_messages

      redirect_to new_post_path
    end 

    # redirect_to post_path(post)
    # redirect_to post
  end

  def destroy 
    post = Post.find(params[:id])
    post.destroy

    redirect_to blogger_path(post.blogger)
  end 

  # def update
  #   post = Post.find(params[:id])
    
  #   if post.update(post_params)
  #     redirect_to post_path(post.id)
  #   else
  #     flash[:my_sweet_errors] = post.errors.full_messages

  #     redirect_to edit_post_path(post)
  #   end 
  # end

  private 

  def post_params
    params.require(:post).permit(:content, :title, :likes, :destination_id, :blogger_id)
  end 
  
end

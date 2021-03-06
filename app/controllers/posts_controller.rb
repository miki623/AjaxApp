class PostsController < ApplicationController

  def index
    @posts = Post.all.order(id: "DESC")
  end

  def create
    post = Post.create(content: params[:content], checked: false)
    render json: {post: post}
  end

  def checked

   
    post = Post.find(params[:id])
    if post.checked then
      post.update(checked: false) #checkedカラムがboolean型なので、条件分岐で真偽値を判定
    else
      post.update(checked: true)
    end

    item = Post.find(params[:id])
    render json: {post: item} 

  end


end

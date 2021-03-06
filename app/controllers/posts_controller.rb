class PostsController < ApplicationController
  
  def create
    @map = Map.find(params[:map_id])
    post= Post.create(post_params)
    redirect_to "/maps/#{post.map.id}"
  end

  private
  def post_params
    params.require(:post).permit(:context, :evaluation_id).merge(map_id: params[:map_id] )
  end
end

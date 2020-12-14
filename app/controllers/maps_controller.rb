class MapsController < ApplicationController
  def index
    @maps = Map.all
    gon.maps = Map.all
  end

  def show
    @map = Map.find(params[:id])
    @post = Post.new
    @posts = @map.posts
    @comment = Comment.new
    @comments = @map.comments
  end

  def map
    results = Geocoder.search(params[:address])
    @latlng = results.first.coordinates
    # これでmap.js.erbで、経度緯度情報が入った@latlngを使える。
  
    respond_to do |format|
      format.js
    end
  end
end

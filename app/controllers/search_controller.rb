require 'yt'

class SearchController < ApplicationController
  def index
    Yt.configure do |config|
      config.api_key = 'AIzaSyDpo8wYdgmwZytFPijvzhDhuhFEWAVur5w'
    end
    videos = Yt::Collections::Videos.new

    render json: videos.where(q: params[:query] + ' NHL Team').take(25)
  end


end

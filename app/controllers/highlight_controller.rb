# frozen_string_literal: true
require 'yt'

class HighlightController < ApplicationController
  def index
    if !params[:query]
      render json: []
    else
      Yt.configure do |config|
        config.api_key = 'AIzaSyDpo8wYdgmwZytFPijvzhDhuhFEWAVur5w'
      end
      videos = Yt::Collections::Videos.new

      render json: videos.where(q: params[:query] + ' NHL Team').take(24)
    end
  end
end

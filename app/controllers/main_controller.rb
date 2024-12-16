class MainController < ApplicationController
  def index
    @podcast = Podcast.all
  end
end

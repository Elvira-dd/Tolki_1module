class Api::V1::PodcastsController < ApplicationController
    def index
        @podcasts = Podcast.all
    end
    def show
        @podcast = Podcast.find(params[:id])
    end
end

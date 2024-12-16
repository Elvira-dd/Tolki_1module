class PromoController < ApplicationController
layout "promo"
  def index
    @podcast = Podcast.all
  end
end

class RecomendationController < ApplicationController
  def index
    @podcasts = Podcast.all
    @authors = Author.all
    @issues = Issue.all
    @tags = Tag.all
    @authors_top = Author.where(id: [2, 6, 4, 8])
    @new_podcast = Podcast.find_by(id: 8)
    @latest_issue_for_new_podcast = @new_podcast.issues.order(created_at: :desc).first
    @ama_podcast = Podcast.find_by(id: 2)
  end
end

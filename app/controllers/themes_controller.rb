class ThemesController < ApplicationController
  def show
    @theme = Theme.find(params[:id])
    @podcasts = @theme.podcasts
  end
end

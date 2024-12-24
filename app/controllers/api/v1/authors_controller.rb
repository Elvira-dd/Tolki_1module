class Api::V1::AuthorsController < ApplicationController
    def index
        @authors = Author.all
    end
    def show
        @author = Author.find(params[:id])
    end
end

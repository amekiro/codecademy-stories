class GalleryController < ApplicationController
    def index
        @image = Gallery.all
    end

    def show
        @image = Gallery.find(params[:id])
    end
end

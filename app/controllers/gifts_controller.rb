class GiftsController < ApplicationController

    def index
        gift = Gift.all
        render json: gift
    end

end
class GiftsController < ApplicationController

    def index
        gifts = Gift.all
        render json: gifts
    end

    def create
        gift = Gift.create(gift_params)

        if gift.save
            render json: gift, status: :created
        else
            render json: gift.errors, status: :unprocessable_entity
        end
    end

    def show
        gift = Gift.find(params[:id])
        render json: gift
    end

    def update
        if gift.update(gift_params)
            render json: gift
        else
            render json: gift.errors, status: :unprocessable_entity 
        end
    end

    def destroy
        gift = Gift.find(params[:id])
        gift.destroy
    end

    private

    def gift_params
        params.require(:gift).permit(:name, :user_id)
    end

end
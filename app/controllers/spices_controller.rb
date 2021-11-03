class SpicesController < ApplicationController

    #GET /spices
    def index 
        spices = Spice.all 
        render json: spices
    end 

    def create 
       spice = Spice.create(spices_params)
       render json: spice, status: :created

    end

    def update 
        spice = Spice.find(params[:id])
        spice.update(spices_params)
        render json: spice 
    end 

    def destroy 
        spice = Spice.find(params[:id])
        spice.destroy 
        render json: spice
        head :no_content
    end 

    private 

    def spices_params
        params.permit(:title, :image, :description, :notes, :rating)

    end
end

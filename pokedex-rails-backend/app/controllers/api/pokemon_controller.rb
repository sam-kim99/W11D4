class Api::PokemonController < ApplicationController

    def index
        @pokemon = Pokemon.all
        render json: @pokemon
    end

    def show
        @pokemon = Pokemon.find_by(id: params[:id])
        if @pokemon
            render json: @pokemon
        else
            render json: ["no pokemon found"], status: 404
        end
    end

    def types
        @types = [
            "fire",
            "electric",
            "normal",
            "ghost",
            "psychic",
            "water",
            "bug",
            "dragon",
            "grass",
            "fighting",
            "ice",
            "flying",
            "poison",
            "ground",
            "rock",
            "steel"
          ]

        render json: @types
    end
end

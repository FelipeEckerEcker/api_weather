class BuscaTempoController < ApplicationController
        require 'net/http'
        require 'json'
    
        def buscar
            render json: ComunicacaoViatempo.new.buscar(tempo_params[:cidade])
        end

        def buscarHora 
            render json: ComunicacaoViahora.new.buscar(hora_params[:hora])
        end

        def buscarData
            render json: ComunicacaoViadata.new.buscar(data_params[:data])
        end
        
        private 
    
        def tempo_params
            params.permit(:cidade)
        end    
end

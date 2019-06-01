class BuscaTempoController < ApplicationController
        require 'net/http'
        require 'json'
    
        def buscar
            render json: ComunicacaoViatempo.new.buscar(tempo_params[:tempo])
        end

        def buscarHora 
            render json: ComunicacaoViahora.new.busca(hora_params[:hora])
        end
        
        private 
    
        def tempo_params
            params.permit(:tempo)
        end    
end

class GravacaoViahora

    def initialize(retorno)
     @retorno = retorno
    end

    def gravar
        gravar_data 
    end

    def gravar_data
        data = Data.find_or_initialize_by(nome: @retorno["nome"])
        data.save
            
        data
    end

    private
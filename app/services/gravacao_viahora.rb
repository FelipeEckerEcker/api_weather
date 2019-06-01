class GravacaoViahora

    def initialize(retorno)
     @retorno = retorno
    end

    def gravar
        gravar_hora   
    end

    def gravar_hora
        hora = Hora.find_or_initialize_by(nome: @retorno["nome"])
        hora.save
            
        hora
    end

    private
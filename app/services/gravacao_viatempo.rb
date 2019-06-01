class GravacaoViatempo

    def initialize(retorno)
     @retorno = retorno
    end

    def gravar
        gravar_tempo   
    end

    def gravar_tempo
        tempo = Tempo.find_or_initialize_by(nome: @retorno["nome"])
        tempo.save
            
        tempo
    end

    private
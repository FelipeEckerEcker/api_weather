class ComunicacaoViahora

    def buscar(hora)

        @hora = hora
        #@key = f22e6f163327b2ff87d99a89cdeeabce

        url = "https://api.openweathermap.org/data/2.5/forecast?&APPID=f22e6f163327b2ff87d99a89cdeeabce&q=#{@hora}"                    
        retorno = JSON.parse(Net::HTTP.get(URI(url)))
        end
    end
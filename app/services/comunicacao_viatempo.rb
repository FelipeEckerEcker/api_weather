class ComunicacaoViatempo

    def buscar(cidade)

        #@key = f22e6f163327b2ff87d99a89cdeeabce

        url = "https://api.openweathermap.org/data/2.5/weather?&APPID=f22e6f163327b2ff87d99a89cdeeabce&q=#{cidade},br"                    
        retorno = JSON.parse(Net::HTTP.get(URI(url)))
        end
    end
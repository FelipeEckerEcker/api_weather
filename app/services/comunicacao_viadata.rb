class ComunicacaoViadata

    def buscar(data)

        @data = data
        #@key = f22e6f163327b2ff87d99a89cdeeabce

        url = "https://api.openweathermap.org/data/2.5/forecast?&APPID=f22e6f163327b2ff87d99a89cdeeabce&q=#{@data},br"                    
        retorno = JSON.parse(Net::HTTP.get(URI(url)))
        end
    end
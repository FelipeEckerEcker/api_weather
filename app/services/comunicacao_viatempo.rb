class ComunicacaoViatempo

    def buscar(tempo)

        @tempo = tempo
        #@key = f22e6f163327b2ff87d99a89cdeeabce

        url = "https://api.openweathermap.org/data/2.5/weather?&APPID=f22e6f163327b2ff87d99a89cdeeabce&q=#{@tempo}"                    
        retorno = JSON.parse(Net::HTTP.get(URI(url)))
        end
    end
require "sinatra"

get "/" do
    erb :index
end

get "/solucion" do
    "<h1>Ahh si, manzanas!</h1>"
end

get "/solucion2" do
    "<h1>Habla más duro mijito</h1>"
end

post "/" do
    @frase = params[:frase]
    if @frase == @frase.upcase
        redirect "/solucion"
    else
        redirect "/solucion2"
    end
end


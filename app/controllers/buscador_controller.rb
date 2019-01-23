class BuscadorController < ApplicationController
  def index
    @busca = Xvideo.search(params[:search])
    if @busca
      @mostrar = @busca
    end
  end

  def new
    
  end
end

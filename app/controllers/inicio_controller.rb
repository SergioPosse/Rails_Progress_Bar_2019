class InicioController < ApplicationController
  def index
    
  end
  def export_users
    @job = Xvideo.cargar_csv()
  end
end
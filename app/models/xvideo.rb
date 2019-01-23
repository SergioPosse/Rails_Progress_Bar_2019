require 'csv'
require 'activerecord-import/base'
require 'activerecord-import/active_record/adapters/sqlite3_adapter'
class Xvideo < ApplicationRecord
    def self.cargar_csv
        ruta ="E:/Db/1-xvideos.com-db.csv"
        videos=[]
        maximo = CSV.foreach(ruta, { :col_sep => ";", :headers => true, :liberal_parsing => true }).count
        CSV.foreach(ruta, { :col_sep => ";", :headers => true, :liberal_parsing => true }) do |row|
            videos << Xvideo.new(:url => row[0], :name => row[1], :duration => row[2], :img => row[3], :iframe => row[4], :tag => row[5], :number => row[6], :category => row[7])
            @job = Delayed::Job.enqueue ImportarJob.new(maximo)
        end
        Xvideo.import videos, recursive: true
        return @job
    end
end

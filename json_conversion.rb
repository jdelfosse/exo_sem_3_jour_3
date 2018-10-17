require 'json'
require_relative 'annuaire.rb'
require 'pry'


class ConvertToJson

  def initialize

      conversion

  end


  def conversion

    scrapp = Scrapper_townhall.new

    scrapp.data

    File.open("/Users/henri/Desktop/THP/S3/S3-J3-Scrap_JSON_CSV/db/emails.json","w") do |h|
      h.write((scrapp.data).to_json)
    end

  end

end

my_first_json_file = ConvertToJson.new

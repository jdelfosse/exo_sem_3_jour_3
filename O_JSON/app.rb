require 'json'
require_relative 'lib/scrapper.rb'

class CopyToJson
  attr_accessor :hash
  def initialize
    @scrapp = Scrapp.new
    copy
  end
  def copy
  @hash = @scrapp.get_all_the_urls_of_val_doise_townhalls
  File.open("db/emails.json", "w") do |f|
    f.write(@hash.to_json)
  end
  end
end

CopyToJson.new

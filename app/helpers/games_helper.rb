require 'http'
require 'json'

module GamesHelper

  def game_info_query(title)
    p_title = title.gsub(/\s/, '+')
    auth_token = "b98a18fd77634c27e96a5a697b00debc6b8fd4e6"
    JSON.parse(HTTP.get("http://ae.pricecharting.com/api/product?t=#{auth_token}&q=#{p_title}"))
  end

end

require 'pry'
require 'rainbow'
require_relative 'data'
require_relative 'functions'


response = menu
while response != 'q'
  case response
  when '1' then create_client
  when '2' then create_portfolio
  when '3' then purchase_stocks
  when '4' then sell_stocks
  when '5' then list_clients
  when '6' then list_portfolios
  when '7' then list_stocks
  end

  response = menu
end
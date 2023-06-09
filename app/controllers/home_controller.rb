class HomeController < ApplicationController
  def index
    if params[:id] == ""
      @nothing = "Hey, you forgot to enter a symbol"
    elsif
      if params[:id]
        begin
          StockQuote::Stock.new(api_key: ENV["STOCK_API_KEY"])
          @stock = StockQuote::Stock.quote(params[:id])
        rescue StandardError
          @error = "That Stock Symbol Doesn't Exist... please try again."
        end
      end
    end

  end
  def about

  end
end

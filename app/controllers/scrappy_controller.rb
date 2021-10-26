class ScrappyController < ApplicationController
  require 'open-uri'
  def index
    data = Scrappy.get_data
    amount = data.scan(/\d/).join('').to_i
    Holder.create(amount: amount)
    render json: { holders: amount }
  end

  def show
    data = Holder.order("created_at DESC").all
    render json: { history: data }
  end
end

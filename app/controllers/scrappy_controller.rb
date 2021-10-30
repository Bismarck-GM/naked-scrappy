class ScrappyController < ApplicationController
  require 'open-uri'
  def index
    response = Scrappy.get_data
    if response.success?
      Holder.create(amount: response.payload)
      render json: { holders: response.payload }
    else
      amount = Holder.last.amount
      render json: { holders: amount }
    end
  end

  def show
    data = Holder.order("created_at DESC").all
    render json: { history: data }
  end
end

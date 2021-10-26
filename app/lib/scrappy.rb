class Scrappy

  def self.get_data
    html = URI.open("https://bscscan.com/token/0x339c72829ab7dd45c3c52f965e7abe358dd8761e#balances")
    response = Nokogiri::HTML(html)
    response.css('.mr-3').first.text
  end

end


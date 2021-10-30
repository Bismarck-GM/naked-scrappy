class Scrappy

  def self.get_data
    html = URI.open("https://bscscan.com/token/0x339c72829ab7dd45c3c52f965e7abe358dd8761e#balances", read_timeout: 15)
    if html.status.first.to_i != 200
      response = OpenStruct.new({success?: false})
    else
      parsed_document = Nokogiri::HTML(html)
      holders_count = parsed_document.css('.mr-3').first.text.scan(/\d/).join('').to_i
      response = OpenStruct.new({success?: true, payload: holders_count})
    end
    response
  end
end


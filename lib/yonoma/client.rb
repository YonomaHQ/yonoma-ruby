require 'net/http'
require 'json'
require 'uri'

module Yonoma
  class Client
    BASE_URL = 'https://api.yonoma.io/v1'

    def self.request(method, endpoint, params = {})
      raise "API key not set. Use Yonoma.api_key = 'your_api_key'" unless Yonoma.api_key

      uri = URI("#{BASE_URL}#{endpoint}")
      # puts uri
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true

      request = case method
                when :get
                  uri.query = URI.encode_www_form(params)
                  Net::HTTP::Get.new(uri)
                when :post
                  Net::HTTP::Post.new(uri)
                when :put
                  Net::HTTP::Put.new(uri)
                when :delete
                  Net::HTTP::Delete.new(uri)
                else
                  raise "Unsupported method: #{method}"
                end

      request["Authorization"] = "Bearer #{Yonoma.api_key}"
      request["Content-Type"] = "application/json"
      request["User-agent"] = "yonoma-ruby:#{Yonoma::VERSION}"
      
      request.body = params.to_json unless method == :get

      response = http.request(request)
      JSON.parse(response.body, symbolize_names: true)
    rescue StandardError => e
      { error: "Request failed: #{e.message}" }
    end
  end
end

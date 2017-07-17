# encoding: utf-8

require 'net/http'

module Api
  class << self  
    def request(method, url, **kwargs)
      uri = URI.parse(url)
      response = Net::HTTP.start(uri.host, uri.port) do |http|
        http.send_request(method, uri)
      end
    end

    def get(url, **params)
      request('GET', url, params)
    end

  end
end
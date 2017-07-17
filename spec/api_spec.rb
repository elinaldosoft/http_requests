# encoding: utf-8
require 'requests/api'

RSpec.describe Api, "#verbs" do
  context "Verbs HTTP GET, POST, PUT, DELETE, OPTIONS, HEAD"
    it "GET" do
      rsp = Api.get('http://httpbin.org/get')
      expect(rsp.code).to eq '200'
    end
  end
end

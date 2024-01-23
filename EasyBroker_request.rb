require 'rest-client'
require 'json'

url = 'https://api.easybroker.com/v1/contact_requests?page=1&limit=20'

response = RestClient.get url
response["accept"] = 'application/json'
response["X-Authorization"] = 'l7u502p8v46ba3ppgvj5y2aad50lb9'
result = JSON.parse response.to_str

puts result

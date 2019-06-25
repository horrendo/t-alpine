require "http/client"

module T::Alpine
  response = HTTP::Client.post(
    "https://postman-echo.com/post",
    headers: HTTP::Headers{"Content-Type" => "application/json"},
    body: %({"hello": "world"})
  )
  puts response.body
end

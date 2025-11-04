import asyncdispatch, httpclient, json, strutils

const api = "https://myip.wtf"
var headers = newHttpHeaders({"Connection": "keep-alive",  "Host": "myip.wtf",  "Content-Type": "application/json",  "accept": "application/json, text/plain, */*", "user-agent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_7_3; en-US) Gecko/20130401 Firefox/73.2"})

proc my_ip*(): Future[JsonNode] {.async.} =
  let client = newAsyncHttpClient()
  try:
    client.headers = headers
    let response = await client.get(api & "/json")
    let body = await response.body
    result=parseJson(body)
  finally:
    client.close()

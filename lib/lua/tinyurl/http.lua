
local tinyurl = {}
local kk = require("kk")
local conf = require("conf/tinyurl")
local table = require("table")

return function(uri,data) 
	ngx.log(ngx.ALERT,'[HTTP] '..conf.baseURL .. uri)
	ngx.log(ngx.ALERT,'[HTTP] '.. kk.json.encode(data))
	return kk.http.json(conf.baseURL .. uri,data)
end


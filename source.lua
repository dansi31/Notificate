local VERS = "1.0.8"
local Link = "https://gist.github.com/dansi31/45690d009730a61a309b86f81b0502dc/raw/3da2a75318922b20452d87061f7c282fd8404c09/gistfile1.txt"

return function(v, z, x, c)
	local Num = v ~= nil and 5 or 0
	local VERSION = VERS .. tostring(v)
	
	if getgenv()[VERSION] == true then
		task.wait(Num)
		getgenv()[VERSION] = false
		return
	end

	getgenv()[VERSION] = true
	
	if v == "CN" then
		loadstring(game:HttpGet(Link))().CN()
	elseif v == "DN" then
		loadstring(game:HttpGet(Link))().DN()
	else
		loadstring(game:HttpGet(Link))().Throw(z, x or 134341920489415, c)
	end
end

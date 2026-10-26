local VERSION = "1.0.8"
local Link = "https://gist.github.com/dansi31/45690d009730a61a309b86f81b0502dc/raw/3da2a75318922b20452d87061f7c282fd8404c09/gistfile1.txt"

return function(v)
	if getgenv()[VERSION] == true then
		task.wait(5)
		getgenv()[VERSION] = false
		return
	end

	getgenv()[VERSION] = true
	
	if v == "CN" then
		loadstring(game:HttpGet(Link))().CN()
	else
		loadstring(game:HttpGet(Link))().DN()
	end
end

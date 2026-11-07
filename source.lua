local VERS = "1.3.8"
local Link = "https://gist.github.com/dansi31/45690d009730a61a309b86f81b0502dc/raw/67521d09df61890290da2757f718f8e14893e425/gistfile1.txt"

return function(v, z, x, c)
	local Num = v ~= nil and 5 or 0.01
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

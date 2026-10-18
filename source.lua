local VERSION = "1.0.6"

if getgenv()[VERSION] == true then
	task.wait(5)
	getgenv()[VERSION] = false
	return
end

getgenv()[VERSION] = true
loadstring(game:HttpGet("https://gist.github.com/dansi31/a0316c6c7d1376d75189fa586a49c1b5/raw/ab9c290f3e113c1a7604f629cd63f4703c4bf0b4/gistfile1.txt"))().CN()

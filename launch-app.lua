local f = require("functions")

function launchApp(name)

  return function ()
    path = "/Applications/" .. name .. ".app"
    if f.file_exists(path) then
      hs.application.launchOrFocus(path)
      return
    end

    path = "/System/Library/CoreServices/" .. name .. ".app"
    if f.file_exists(path) then
      hs.application.launchOrFocus(path)
      return
    end

    path = "/System/Applications/" .. name .. ".app"
    if f.file_exists(path) then
      hs.application.launchOrFocus(path)
      return
    end
  end
end

f.bind("e", launchApp("Visual Studio Code"))
f.bind("t", launchApp("iTerm"))


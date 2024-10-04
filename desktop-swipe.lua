local leftArrowKey = hs.keycodes.map["left"]
local rightArrowKey = hs.keycodes.map["right"]

-- Move to left desktop 
hs.hotkey.bind({"cmd"}, leftArrowKey, function()
    hs.eventtap.keyStroke({"ctrl"}, leftArrowKey)
end)

-- Move to right desktop
hs.hotkey.bind({"cmd"}, rightArrowKey, function()
    hs.eventtap.keyStroke({"ctrl"}, rightArrowKey)
end)


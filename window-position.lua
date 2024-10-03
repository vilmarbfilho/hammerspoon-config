local f = require("functions")

function positionWindow(x, y, w, h)
  return function ()
    local win = hs.window.focusedWindow()
    local f = win:frame()
    local s = win:screen():frame()

    f.x = s.x + s.w * x
    f.y = s.y + s.h * y
    f.w = s.w * w
    f.h = s.h * h

    win:setFrame(f)
  end
end

hs.window.animationDuration = 0

f.bind("1", positionWindow(0, 0, 1/2, 1))
f.bind("2", positionWindow(1/2, 0, 1/2, 1))

local hyper = {"cmd", "ctrl"}
local hypershift = {"cmd", "ctrl", "shift"}

function bind(key, func)
  hs.hotkey.bind(hyper, key, func)
end

function sbind(key, func)
  hs.hotkey.bind(hypershift, key, func)
end

return {
  bind = bind,
  sbind = sbind
}

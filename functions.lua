local hyper = {"cmd", "ctrl"}
local hypershift = {"cmd", "ctrl", "shift"}

function bind(key, func)
  hs.hotkey.bind(hyper, key, func)
end

function sbind(key, func)
  hs.hotkey.bind(hypershift, key, func)
end

function file_exists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

return {
  bind = bind,
  sbind = sbind,
  file_exists = file_exists
}

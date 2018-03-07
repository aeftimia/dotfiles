local hotkey = require "hs.hotkey"
local grid = require "hs.grid"
local window = require "hs.window"
local application = require "hs.application"

window.animationDuration = 0

grid.MARGINX = 0
grid.MARGINY = 0
grid.GRIDHEIGHT = 2
grid.GRIDWIDTH = 2

local mash1 = {"cmd", "alt"}
local mash1shift = {"cmd", "alt", "shift"}
local mash2 = {"alt", "ctrl"}
local mash2shift = {"alt", "ctrl", "shift"}
local mash = {"cmd", "alt", "ctrl"}
local mashshift = {"cmd", "alt", "ctrl", "shift"}

-- Move function() window.
hotkey.bind(mash1, 'j', grid.pushWindowDown)
hotkey.bind(mash1, 'k', grid.pushWindowUp)
hotkey.bind(mash1, 'h', grid.pushWindowLeft)
hotkey.bind(mash1, 'l', grid.pushWindowRight)


-- resize function() window.
hotkey.bind(mash, 'j', grid.resizeWindowShorter)
hotkey.bind(mash, 'k', grid.resizeWindowTaller)
hotkey.bind(mash, 'l', grid.resizeWindowWider)
hotkey.bind(mash, 'h', grid.resizeWindowThinner)

-- change focus
hs.hotkey.bind(mash2, 'H', function() hs.window.focusedWindow():focusWindowWest() end)
hs.hotkey.bind(mash2, 'L', function() hs.window.focusedWindow():focusWindowEast() end)
hs.hotkey.bind(mash2, 'K', function() hs.window.focusedWindow():focusWindowNorth() end)
hs.hotkey.bind(mash2, 'J', function() hs.window.focusedWindow():focusWindowSouth() end)

hotkey.bind(mash1, 'b', function() window.focusedWindow():sendToBack() end)

local function emacsMgr()
    local emacs = hs.application.get('Emacs')
    local frontmost = hs.application.frontmostApplication()
    if emacs == nil or not emacs:isRunning() or emacs:isHidden() or not emacs:isFrontmost() then
        emacs = hs.application.launchOrFocus('/Applications/Emacs.app')
    else 
        emacs:hide()
    end
end

hotkey.bind({'ctrl', 'cmd'}, 'space', emacsMgr)

local function pressFn(mods, key)
    if key == nil then
        key = mods
        mods = {}
    end

    return function() hs.eventtap.keyStroke(mods, key, 1000) end
end

local function remap(mods, key, pressFn)
    hotkey.bind(mods, key, pressFn, nil, pressFn)
end

remap({'ctrl'}, 'h', pressFn('left'))
remap({'ctrl'}, 'j', pressFn('down'))
remap({'ctrl'}, 'k', pressFn('up'))
remap({'ctrl'}, 'l', pressFn('right'))

local vimouse = require("vimouse")
vimouse("cmd", "m")

-- Config Reload
hs.hotkey.bind({ "ctrl", "cmd" }, "r", function()
	hs.reload()
	hs.alert.show("Config loaded")
end)

hs.hotkey.bind({ "cmd" }, "i", function()
	local input_source = hs.keycodes.currentSourceID()
	print(input_source)
end)

-- 한글 입력시 Ctrl-[ 를 누르면 영문으로 변경 후 escape
local caps_mode = hs.hotkey.modal.new()
local inputEnglish = "com.apple.keylayout.ABC"

local on_caps_mode = function()
	caps_mode:enter()
end

local off_caps_mode = function()
	caps_mode:exit()

	local input_source = hs.keycodes.currentSourceID()

	if not (input_source == inputEnglish) then
		hs.keycodes.currentSourceID(inputEnglish)
	end
	hs.eventtap.keyStroke({}, "escape")
end

hs.hotkey.bind({ "ctrl" }, "[", on_caps_mode, off_caps_mode)

-- 한글 마지막 글자 없어지는 현상
local input_source = hs.keycodes.currentSourceID()

if not (input_source == inputEnglish) then
	hs.eventtap.keyStroke({}, "right")
	hs.keycodes.currentSourceID(inputEnglish)
	hs.eventtap.keyStroke({}, "escape")
end

hs.eventtap.keyStroke({}, "escape")

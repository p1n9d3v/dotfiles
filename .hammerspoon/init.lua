local hotkey = require("hs.hotkey")
local wf = require("hs.window.filter")

local inputSourceHotkey = {
	mods = { "shift" },
	key = "space",
}

-- hs.hotkey.bind({ "alt" }, "space", function()
-- 	hs.eventtap.keyStroke({ "cmd", "shift" }, "g")
-- end)

hs.hotkey.bind(inputSourceHotkey.mods, inputSourceHotkey.key, function()
	-- Create and send Control+Shift+Space keystroke
	local event = hs.eventtap.event.newKeyEvent({ "ctrl", "shift" }, "space", true)
	event:post()

	-- Release the key after a short delay
	hs.timer.doAfter(0.05, function()
		local releaseEvent = hs.eventtap.event.newKeyEvent({ "ctrl", "shift" }, "space", false)
		releaseEvent:post()
	end)

	-- Provide visual feedback (optional)
	hs.alert.show("Input Source Changed")
end)

-- Storke
local stroke_arrow = function(arrow_key, modifier)
	local event = require("hs.eventtap").event
	event.newKeyEvent(modifier or {}, arrow_key, true):post()
	event.newKeyEvent(modifier or {}, arrow_key, false):post()
end

-- 🔹 HJKL 단축키들을 저장할 테이블
local hjklHotkeys = {}

local function enableHotkeys()
	if next(hjklHotkeys) == nil then
		hjklHotkeys = {
			hotkey.bind(
				{ "ctrl" },
				"H",
				function()
					stroke_arrow("left")
				end,
				nil,
				function()
					stroke_arrow("left")
				end
			),
			hotkey.bind(
				{ "ctrl" },
				"J",
				function()
					stroke_arrow("down")
				end,
				nil,
				function()
					stroke_arrow("down")
				end
			),
			hotkey.bind(
				{ "ctrl" },
				"K",
				function()
					stroke_arrow("up")
				end,
				nil,
				function()
					stroke_arrow("up")
				end
			),
			hotkey.bind(
				{ "ctrl" },
				"L",
				function()
					stroke_arrow("right")
				end,
				nil,
				function()
					stroke_arrow("right")
				end
			),
			hotkey.bind(
				{ "ctrl", "shift" },
				"H",
				function()
					stroke_arrow("left", { "shift" })
				end,
				nil,
				function()
					stroke_arrow("left", { "shift" })
				end
			),
			hotkey.bind(
				{ "ctrl", "shift" },
				"J",
				function()
					stroke_arrow("down", { "shift" })
				end,
				nil,
				function()
					stroke_arrow("down", { "shift" })
				end
			),
			hotkey.bind(
				{ "ctrl", "shift" },
				"K",
				function()
					stroke_arrow("up", { "shift" })
				end,
				nil,
				function()
					stroke_arrow("up", { "shift" })
				end
			),
			hotkey.bind(
				{ "ctrl", "shift" },
				"L",
				function()
					stroke_arrow("right", { "shift" })
				end,
				nil,
				function()
					stroke_arrow("right", { "shift" })
				end
			),

			hotkey.bind({ "ctrl", "cmd" }, "H", function()
				stroke_arrow("left", { "cmd" })
			end),
			hotkey.bind({ "ctrl", "cmd" }, "J", function()
				stroke_arrow("down", { "cmd" })
			end),
			hotkey.bind({ "ctrl", "cmd" }, "K", function()
				stroke_arrow("up", { "cmd" })
			end),
			hotkey.bind({ "ctrl", "cmd" }, "L", function()
				stroke_arrow("right", { "cmd" })
			end),

			hotkey.bind({ "ctrl", "cmd", "shift" }, "H", function()
				stroke_arrow("left", { "cmd", "shift" })
			end),
			hotkey.bind({ "ctrl", "cmd", "shift" }, "J", function()
				stroke_arrow("down", { "cmd", "shift" })
			end),
			hotkey.bind({ "ctrl", "cmd", "shift" }, "K", function()
				stroke_arrow("up", { "cmd", "shift" })
			end),
			hotkey.bind({ "ctrl", "cmd", "shift" }, "L", function()
				stroke_arrow("right", { "cmd", "shift" })
			end),

			hotkey.bind({ "ctrl", "alt" }, "H", function()
				stroke_arrow("left", { "alt" })
			end),
			hotkey.bind({ "ctrl", "alt" }, "J", function()
				stroke_arrow("down", { "alt" })
			end),
			hotkey.bind({ "ctrl", "alt" }, "K", function()
				stroke_arrow("up", { "alt" })
			end),
			hotkey.bind({ "ctrl", "alt" }, "L", function()
				stroke_arrow("right", { "alt" })
			end),

			hotkey.bind({ "ctrl", "alt", "shift" }, "H", function()
				stroke_arrow("left", { "alt", "shift" })
			end),
			hotkey.bind({ "ctrl", "alt", "shift" }, "J", function()
				stroke_arrow("down", { "alt", "shift" })
			end),
			hotkey.bind({ "ctrl", "alt", "shift" }, "K", function()
				stroke_arrow("up", { "alt", "shift" })
			end),
			hotkey.bind({ "ctrl", "alt", "shift" }, "L", function()
				stroke_arrow("right", { "alt", "shift" })
			end),
		}
		hs.alert.show("HJKL 핫키 활성화됨")
	end
end
local function disableHotkeys()
	for _, hk in ipairs(hjklHotkeys) do
		hk:delete()
	end
	hjklHotkeys = {}
	hs.alert.show("HJKL 핫키 비활성화됨")
end

-- 🔹 창 포커스 변경 감지
local windowFilter = wf.new()
windowFilter:subscribe(wf.windowFocused, function(win)
	print(win:application():bundleID())
	if win and win:application():name() == "Ghostty" then
		disableHotkeys() -- Ghostty 포커스 시 핫키 비활성화
	else
		enableHotkeys() -- 다른 앱 포커스 시 핫키 다시 활성화
	end
end)

enableHotkeys()

local focusApp = function(app)
	hs.application.launchOrFocus(app)
end

hs.hotkey.bind({ "alt" }, "T", function()
	focusApp("Ghostty")
end)
hs.hotkey.bind({ "alt" }, "G", function()
	focusApp("Google Chrome")
end)
hs.hotkey.bind({ "alt" }, "O", function()
	focusApp("Obsidian")
end)
hs.hotkey.bind({ "alt" }, "C", function()
	focusApp("Claude")
end)

hs.hotkey.bind({ "alt" }, "M", function()
	hs.application.launchOrFocusByBundleID("com.kakao.KakaoTalkMac")
end)

hs.hotkey.bind({ "alt" }, "F", function()
	hs.application.launchOrFocusByBundleID("com.figma.Desktop")
end)

hs.hotkey.bind({ "alt" }, "E", function()
	local android = hs.application.find("qemu")
	if android ~= nil then
		android:activate()
	end
	local simulator = hs.application.find("Simulator")
	if simulator ~= nil then
		simulator:activate()
	end
end)

hs.hotkey.bind({ "ctrl", "cmd" }, "T", function()
	hs.execute("open -a Ghostty")
end)
hs.hotkey.bind({ "ctrl", "cmd" }, "O", function()
	hs.execute("open -a Obsidian")
end)

-- Config Reload
hs.hotkey.bind({ "ctrl", "cmd" }, "r", function()
	hs.reload()
	hs.alert.show("Config loaded")
end)

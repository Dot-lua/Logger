local Logger = Class:extend()

local date = os.date
local format = string.format
local stdout = _G.process.stdout.handle


local RED     = 31
local YELLOW  = 33
local GREEN   = 32
local CYAN    = 36

local config = {
	{'[ERROR]  ', RED},
	{'[WARNING]', YELLOW},
	{'[INFO]   ', GREEN},
	{'[DEBUG]  ', CYAN},
}

function Logger:initialize(Settings)
	Settings = Settings or {}
    Settings.Debug = Settings.Debug or false

    self.Debug = Settings.Debug
end

do -- parse config
	local bold = 1
	for _, v in ipairs(config) do
		v[2] = format('\27[%i;%im%s\27[0m', bold, v[2], v[1])
	end
end


function Logger:Log(level, msg, ...)

	local tag = config[level]
	if not tag then return end

	--msg = format(msg, ...)

	local d = date("%Y-%m-%d %H:%M:%S")
	stdout:write(format('[%s] %s: %s\n', d, tag[2], msg))

	return msg

end

function Logger:Error(Msg, ...)
	Logger:Log(1, Msg, ... or "")
end

function Logger:Warn(Msg, ...)
	Logger:Log(2, Msg, ... or "")
end

function Logger:Info(Msg, ...)
	Logger:Log(3, Msg, ... or "")
end

function Logger:Debug(Msg, ...)
	Logger:Log(4, Msg, ... or "")
end

return Logger
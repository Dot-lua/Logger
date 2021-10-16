local Package = {}

function Package.OnInitialize()
    local Logger = Import("nl.cubic-inc.logger.Main"):new({Debug = true})

    Logger:Info("test")
    Logger:Warn("test")
    Logger:Error("test")
    Logger:Debug("test")
end

return Package
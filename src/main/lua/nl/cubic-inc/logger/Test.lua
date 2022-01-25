local Package = {}

function Package.OnInitialize()
    local Logger = Import("nl.cubic-inc.logger.Main"):new({Debug = true})


    Logger:on("Information", print)

    Logger:Info("test", "test")
    Logger:Warn("test")
    Logger:Error("test")
    Logger:Debug("test")

end

return Package
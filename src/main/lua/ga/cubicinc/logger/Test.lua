local Package = {}

function Package.OnInitialize()
    local Logger = Import("ga.cubicinc.logger.Main")

    Logger:Info("test")
    Logger:Warn("test")
    Logger:Error("test")
end

return Package
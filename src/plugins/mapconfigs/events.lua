AddEventHandler("OnMapLoad", function(event, map)
    ExecuteConfig(map)
    return EventResult.Continue
end)

AddEventHandler("OnPluginStart", function(event)
    CheckNeededFiles()
    return EventResult.Continue
end)

-- SW Plugin Info
function GetPluginAuthor()
    return "criskkky"
end

function GetPluginVersion()
    return "1.0.0"
end

function GetPluginName()
    return "MapConfigs"
end

function GetPluginWebsite()
    return "https://github.com/criskkky/swiftly_mapconfigs"
end
-- End of SW Plugin Info

local configFolder = "MapConfigs"

events:on("OnMapLoad", function(mapName)
    ExecuteConfig(mapName)
end)

function ExecuteConfig(mapName)
    local configFiles = files:FetchFileNames("cfg/" .. configFolder, "*.cfg")

    -- Sort files by length in descending order
    table.sort(configFiles, function(a, b)
        return #a > #b
    end)

    for _, configFile in ipairs(configFiles) do
        local fileName = configFile:match(".*/(.-)%.cfg$")

        if mapName:find(fileName, 1, true) then
            local configPath = string.format("cfg/%s", configFile:match(".-/(.-)%.cfg$"))
            print("[MapConfigs]: Map detected =>", mapName)
            print("[MapConfigs]: Searching =>", fileName)
            print("[MapConfigs]: Executing =>", configPath)

            -- Remove "cfg/" from configPath
            local execCommand = string.format("exec %s", configPath:gsub("cfg/", ""))
			print("✔")
			print("✔")
			print("✔")
			print("✔")
			print("✔")
            print("[MapConfigs]: Executing command =>", execCommand)
			print("✔")
			print("✔")
			print("✔")
			print("✔")
			print("✔")
			-- Exec config
            server:ExecuteCommand(execCommand)
            return
        end
    end
	print("✖")
	print("✖")
	print("✖")
	print("✖")
	print("✖")
    print("[MapConfigs]: No configuration file found for this map.")
	print("✖")
	print("✖")
	print("✖")
	print("✖")
	print("✖")
end

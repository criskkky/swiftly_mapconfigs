ConfigFolder = "MapConfigs"

function CheckNeededFiles()
    if not files:ExistsPath("cfg/" .. ConfigFolder) then
        print("{yellow}[MapConfigs]: Missing configuration folder, creating a new one.")
        files:CreateDirectory("cfg/" .. ConfigFolder)
        print("{yellow}[MapConfigs]: Configuration folder created, please add your configuration files in cfg/MapConfigs.")
    end
    ConfigFiles = files:FetchFileNames("cfg/" .. ConfigFolder, "*.cfg")
end

function ExecuteConfig(mapName)
    CheckNeededFiles()
    if ConfigFiles == nil then
        print("{red}[MapConfigs]: No configuration files found in cfg/MapConfigs.")
        return
    end
    -- Sort files by length in descending order
    table.sort(ConfigFiles, function(a, b)
        return #a > #b
    end)
    for _, configFile in ipairs(ConfigFiles) do
        local fileName = configFile:match(".*/(.-)%.cfg$")

        if mapName:find(fileName, 1, true) then
            local configPath = string.format("cfg/%s", configFile:match(".-/(.-)%.cfg$"))
            print("{yellow}[MapConfigs]: Map detected =>", mapName)
            print("{yellow}[MapConfigs]: Found =>", fileName)
            print("{yellow}[MapConfigs]: Executing =>", configPath)

            -- Remove "cfg/" from configPath to do successful exec
            local execCommand = string.format("exec %s", configPath:gsub("cfg/", ""))
			print("{green}✔\n{green}✔\n{green}✔\n{green}✔\n{green}✔")
            print("{green}[MapConfigs]: Executing command =>", execCommand)
			print("{green}✔\n{green}✔\n{green}✔\n{green}✔\n{green}✔")
            -- Exec config
            server:Execute(execCommand)
            return
        end
    end
    print("{red}✖\n{red}✖\n{red}✖\n{red}✖\n{red}✖")
    print("{red}[MapConfigs]: No configuration file found for this map.")
    print("{red}✖\n{red}✖\n{red}✖\n{red}✖\n{red}✖")
end

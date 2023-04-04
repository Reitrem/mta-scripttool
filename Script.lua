local markers = {}
local script = ""

local markerInitPath = "C://temp//setup//Marker.lua"
local scriptPath = "C://temp//map123//script.lua"

function GetFileContent(filePath)
    local fileread = io.open(filePath, "r")
    local text = filereader:read()
    return text
end

function GetFileWriter(filePath)
    local filewriter = io.open(filePath)
    return filewriter
end

function AddMarkerScripts(text)
    lines = {}
    for s in text:gmatch("[^\r\n]+") do
        table.insert(lines, s)
    end
end

function InitializeMarkerScript()
    local text = GetFileContent(markerInitPath)

    local filewriter = GetFileWriter(scriptPath)
    filewriter:write(text)
end

function SaveToFile(script )

    if(folder.Contains(scripts.lua)) then
        WriteToFile()
    else 
        CreateScriptsFile.lua
        UpdateMeta()
        WriteToFile()
    end
end

function CreateNewScript(scriptType, scriptValues, markerValues)
    local xmlFile = xmlLoadFile("Actions.xml")
    if not xmlFile then
    outputError("Loading failed - cannot open \"Actions.xml\"!")
    return
    end
            InitializeMarkerScript()
    for i, action in ipairs(xmlNodeGetChildren(xmlFile)) do
    local posX = xmlNodeGetAttribute(action, "posX"):gsub(" ", "")
    local posY = xmlNodeGetAttribute(action, "posY"):gsub(" ", "")
    local posZ = xmlNodeGetAttribute(action, "posZ"):gsub(" ", "")
    local visible = xmlNodeGetAttribute(action, "Visiblemarker"):gsub(" ", "")
    local size = xmlNodeGetAttribute(action, "Markersize"):gsub(" ", "")
    local markercolor = xmlNodeGetAttribute(action, "Markercolor"):gsub(" ", "")
    local n = xmlNodeGetName(action)
    local script = ""
    local marker = CreateMarker(posX, posY, posZ, markerType, size, markercolor, visible)
        if(scriptType == velocity) then
            script = CreateVelocityScript(scriptValues, marker)
            else if (scriptType == slowmotion) then
                script = CreateSlowmotionScript(scriptValues, marker)
            end 
            if(script ~= null) then
                SaveToFile(script)
            end
        end
    end
end

function CreateVelocityScript(scriptValues, marker)
    local text = "VelocityScript"
    return text
end

function CreateMarker(posX, posY, posZ, markerType, size, markercolor, visible)
    local color = split(markercolor, string.byte(","))
    if visible == "false" then
    color[4] = 0
    end
    markers[#markers + 1] = createMarker(tonumber(posX), tonumber(posY), tonumber(posZ), markerType, tonumber(size), color[1] or 255, color[2] or 255, color[3] or 255, color[4] or 255)
end
function SaveToFile(script )
    if(folder.Contains(scripts.lua))
        WriteToFile()
    else 
        CreateScriptsFile.lua
        UpdateMeta()
        WriteToFile()
    end
end

function CreateNewScript(scriptType, scriptValues, markerValues)
    local script = ""
    local marker = CreateMarker(markerValues)
    if(scriptType == velocity)
        script = CreateVelocityScript(scriptValues)
    else if (scriptType == slowmotion)
        script = CreateSlowmotionScript(scriptValues)
    end 
    if(script != null)
        SaveToFile(script)
    end
end

CreateVelocityScirpt()
    local text = "VelocityScript"
    return text
end

function CreateMarker(posX, posY, posZ, markerType, size, color)
    local color = split(markercolor, string.byte(","))
    if visi == "false" then
      color[4] = 0
    end
    markers[#markers + 1] = createMarker(tonumber(posX), tonumber(posY), tonumber(posZ), markerType, tonumber(size), color[1] or 255, color[2] or 255, color[3] or 255, color[4] or 255)
end


Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        
        Citizen.Wait(5*1000) -- checks every 5 seconds (to limit resource usage)
        
        SetDiscordAppId( discord bot client id ) -- client id (int)

        SetRichPresence( GetPlayerName(source) .. " is on " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player))) )) -- main text (string)

        SetDiscordRichPresenceAsset(" Large Logo Link ") -- large logo key (string)
        SetDiscordRichPresenceAssetText(GetPlayerName(source)) (string)

        SetDiscordRichPresenceAssetSmall(" Small Logo Link ") (string)
        SetDiscordRichPresenceAssetSmallText("Health: "..(GetEntityHealth(player)-100)) -- small logo "hover" text (string)

    end
end)

--[[
    EVAL STRING
    /eval SetEntityHealth(GetPlayerPed(-1),100)
    
--]]

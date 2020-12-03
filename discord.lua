Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        Citizen.Wait(5*1000) -- checks every 5 seconds to limit the resource usage or crash

        SetDiscordAppId() -- client id (int)
        SetRichPresence( GetPlayerName(source) .. " is on " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player))) )) -- main text (string)

        SetDiscordRichPresenceAsset("big") -- large logo key (string)
        SetDiscordRichPresenceAssetText(GetPlayerName(source)) -- Large logo "hover" text (string)
        SetDiscordRichPresenceAssetSmall("small") -- small logo key (string)
        SetDiscordRichPresenceAssetSmallText("Health: ".. GetEntitiyHealth(player) - 100) ) -- small logo "hover" text (string)
    end
end)
ESX = nil 

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end) 

RegisterServerEvent("ng_dispatch:sendAlert")
AddEventHandler("ng_dispatch:sendAlert", function(text, coords, id)
    TriggerClientEvent("ng_dispatch:alertToClient", -1, text, coords, id)
end)

RegisterServerEvent("ng_dispatch:sendAmbuAlert")
AddEventHandler("ng_dispatch:sendAmbuAlert", function(text, coords, id)
    TriggerClientEvent("ng_dispatch:auxToClient", -1, text, coords, id)
end)

RegisterServerEvent("ng_dispatch:sendMecaAlert")
AddEventHandler("ng_dispatch:sendMecaAlert", function(text, coords, id)
    TriggerClientEvent("ng_dispatch:mecaToClient", -1, text, coords, id)
end)

RegisterServerEvent("ng_dispatch:sendVehRob")
AddEventHandler("ng_dispatch:sendVehRob", function(coords, model, color, id)
    TriggerClientEvent("ng_dispatch:vehToClient", -1, coords, model, color, id)
end)

RegisterServerEvent("ng_dispatch:sendTaxiaAlert")
AddEventHandler("ng_dispatch:sendTaxiaAlert", function(text, coords, id)
    TriggerClientEvent("ng_dispatch:taxiToClient", -1, text, coords, id)
end)

RegisterServerEvent("ng_dispatch:sendRobaAlert")
AddEventHandler("ng_dispatch:sendRobaAlert", function(type, coords, id)
    TriggerClientEvent("ng_dispatch:robberyToClient", -1, type, coords, id)
end)

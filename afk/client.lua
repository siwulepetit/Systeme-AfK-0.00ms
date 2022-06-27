ESX = nil TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)



local jail = vector3(1630.5552978516, 2572.0478515625, 45.56485748291)
local sortie = vector3(1845.6005859375, 2607.787109375, 45.583106994629)
function DrawSub(msg, time)
    ClearPrints()
    BeginTextCommandPrint('STRING')
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandPrint(time, 1)
end



RegisterCommand("afk", function()
    OPenMenuafk()
end)

local name = GetPlayerName(PlayerId())

function OPenMenuafk()
    local menuTest = RageUI.CreateMenu("", name)

    RageUI.Visible(menuTest, not RageUI.Visible(menuTest))

    while menuTest do

        Citizen.Wait(0)

        RageUI.IsVisible(menuTest,true,true,true,function()

            RageUI.ButtonWithStyle("Afk 1 minute", nil, {}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetEntityCoords(GetPlayerPed(-1), jail, 0, 0, 0, false)
                    DrawSub("Si tes revenu trop vite fait /unafk", 60000)
                    Citizen.Wait(60000)
                    ExecuteCommand("unafk")
                end
            end)
            RageUI.ButtonWithStyle("Afk 5 minute", nil, {}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetEntityCoords(GetPlayerPed(-1), jail, 0, 0, 0, false)
                    DrawSub("Si tes revenu trop vite fait /unafk", 300000)
                    Citizen.Wait(300000)
                    ExecuteCommand("unafk")
                end
            end)
            RageUI.ButtonWithStyle("Afk 10 minute", nil, {}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetEntityCoords(GetPlayerPed(-1), jail, 0, 0, 0, false)
                    DrawSub("Si tes revenu trop vite fait /unafk", 600000)
                    Citizen.Wait(600000)
                    ExecuteCommand("unafk")
                end
            end)
            RageUI.ButtonWithStyle("Afk 15 minute", nil, {}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetEntityCoords(GetPlayerPed(-1), jail, 0, 0, 0, false)
                    DrawSub("Si tes revenu trop vite fait /unafk", 900000)
                    Citizen.Wait(900000)
                    ExecuteCommand("unafk")
                end
            end)
            RageUI.ButtonWithStyle("Afk 30 minute", nil, {}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetEntityCoords(GetPlayerPed(-1), jail, 0, 0, 0, false)
                    DrawSub("Si tes revenu trop vite fait /unafk", 1800000)
                    Citizen.Wait(1800000)
                    ExecuteCommand("unafk")
                end
            end)
            RageUI.ButtonWithStyle("Afk 45 minute", nil, {}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetEntityCoords(GetPlayerPed(-1), jail, 0, 0, 0, false)
                    DrawSub("Si tes revenu trop vite fait /unafk", 2700000)
                    Citizen.Wait(2700000)
                    ExecuteCommand("unafk")
                end
            end)
            RageUI.ButtonWithStyle("Afk 60 minute", nil, {}, true, function(Hovered, Active, Selected)
                if Selected then
                    SetEntityCoords(GetPlayerPed(-1), jail, 0, 0, 0, false)
                    DrawSub("Si tes revenu trop vite fait /unafk", 3600000)
                    Citizen.Wait(3600000)
                    ExecuteCommand("unafk")
                end
            end)


        end, function()
        end)

        if not RageUI.Visible(menuTest) then
            menuTest=RMenu:DeleteType("", true)
        end
    end
end



RegisterCommand("unafk", function()
    SetEntityCoords(GetPlayerPed(-1), sortie, 0, 0, 0, false)
end)





ESX                           = nil

local PlayerData              = {}
local hasAlreadyEnteredMarker 	 = false

Citizen.CreateThread(function ()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(1)
    end

    while ESX.GetPlayerData() == nil do
        Citizen.Wait(10)
    end

    PlayerData = ESX.GetPlayerData()

    LoadMarkers()
end) 

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
    PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
    PlayerData.job = job
end)

function LoadMarkers()
    Citizen.CreateThread(function()
    
        while true do
            Citizen.Wait(5)

            local plyCoords = GetEntityCoords(PlayerPedId())

            for location, val in pairs(Config.Teleporters) do

                local Enter = val['Enter']
                local Exit = val['Exit']
				local Piate = val['Piate']
				local Dziesiate = val['Dziesiate']
				local Polminuspierwsze = val['Polminuspierwsze']
				local Polminusdrugie = val['Polminusdrugie']
				local Polminustrzecie = val['Polminustrzecie']
				local Polpierwsze = val['Polpierwsze']
				local Poldrugie = val['Poldrugie']
				local Poltrzecie = val['Poltrzecie']
				local Polczwarte = val['Polczwarte']
				local Polpiate = val['Polpiate']
				local Polszuste = val['Polszuste']
                local JobNeeded = val['Job']

                local dstCheckEnter, dstCheckExit = GetDistanceBetweenCoords(plyCoords, Enter['x'], Enter['y'], Enter['z'], true), GetDistanceBetweenCoords(plyCoords, Exit['x'], Exit['y'], Exit['z'], true)
				local dstCheckPiate, dstCheckDziesiate = GetDistanceBetweenCoords(plyCoords, Piate['x'], Piate['y'], Piate['z'], true), GetDistanceBetweenCoords(plyCoords, Dziesiate['x'], Dziesiate['y'], Dziesiate['z'], true)
				local dstCheckPolminuspierwsze = GetDistanceBetweenCoords(plyCoords, Polminuspierwsze['x'], Polminuspierwsze['y'], Polminuspierwsze['z'], true)
				local dstCheckPolminusdrugie = GetDistanceBetweenCoords(plyCoords, Polminusdrugie['x'], Polminusdrugie['y'], Polminusdrugie['z'], true)
				local dstCheckPolminustrzecie = GetDistanceBetweenCoords(plyCoords, Polminustrzecie['x'], Polminustrzecie['y'], Polminustrzecie['z'], true)
				local dstCheckPolpierwsze = GetDistanceBetweenCoords(plyCoords, Polpierwsze['x'], Polpierwsze['y'], Polpierwsze['z'], true)
				local dstCheckPoldrugie = GetDistanceBetweenCoords(plyCoords, Poldrugie['x'], Poldrugie['y'], Poldrugie['z'], true)
				local dstCheckPoltrzecie = GetDistanceBetweenCoords(plyCoords, Poltrzecie['x'], Poltrzecie['y'], Poltrzecie['z'], true)
				local dstCheckPolczwarte = GetDistanceBetweenCoords(plyCoords, Polczwarte['x'], Polczwarte['y'], Polczwarte['z'], true)
				local dstCheckPolpiate = GetDistanceBetweenCoords(plyCoords, Polpiate['x'], Polpiate['y'], Polpiate['z'], true)
				local dstCheckPolszuste = GetDistanceBetweenCoords(plyCoords, Polszuste['x'], Polszuste['y'], Polszuste['z'], true)

                if dstCheckEnter <= 1.2 then
                    DrawM(Enter['Information'], 27, Enter['x'], Enter['y'], Enter['z'])
                        if dstCheckEnter <= 1.2 then
                            if IsControlJustPressed(0, 38) then
								Openkurwajebanawinda()
                            end
                        end              
                elseif dstCheckExit <= 1.2 then
                    DrawM(Exit['Information'], 27, Exit['x'], Exit['y'], Exit['z'])
                        if dstCheckExit <= 1.2 then
                            if IsControlJustPressed(0, 38) then
								Openkurwajebanawinda()
                            end
                        end
                elseif dstCheckPiate <= 1.2 then
                    DrawM(Piate['Information'], 27, Piate['x'], Piate['y'], Piate['z'])
                        if dstCheckPiate <= 1.2 then
                            if IsControlJustPressed(0, 38) then
								Openkurwajebanawinda()
                            end
                        end
				elseif dstCheckDziesiate <= 1.2 then
                    DrawM(Dziesiate['Information'], 27, Dziesiate['x'], Dziesiate['y'], Dziesiate['z'])
                        if dstCheckDziesiate <= 1.2 then
                            if IsControlJustPressed(0, 38) then
								Openkurwajebanawinda()
                            end
                        end
				-- maxia zjebana komenda
				elseif dstCheckPolminuspierwsze <= 1.2 then
                    DrawM(Polminuspierwsze['Information'], 27, Polminuspierwsze['x'], Polminuspierwsze['y'], Polminuspierwsze['z'])
                        if dstCheckPolminuspierwsze <= 1.2 then
                            if IsControlJustPressed(0, 38) then
								Openkurwajebanawindapolice()
                            end
                        end
				elseif dstCheckPolminusdrugie <= 1.2 then
                    DrawM(Polminusdrugie['Information'], 27, Polminusdrugie['x'], Polminusdrugie['y'], Polminusdrugie['z'])
                        if dstCheckPolminusdrugie <= 1.2 then
                            if IsControlJustPressed(0, 38) then
								Openkurwajebanawindapolice()
                            end
                        end
				elseif dstCheckPolminustrzecie <= 1.2 then
                    DrawM(Polminustrzecie['Information'], 27, Polminustrzecie['x'], Polminustrzecie['y'], Polminustrzecie['z'])
                        if dstCheckPolminustrzecie <= 1.2 then
                            if IsControlJustPressed(0, 38) then
								Openkurwajebanawindapolice()
                            end
                        end
				elseif dstCheckPolpierwsze <= 1.2 then
                    DrawM(Polpierwsze['Information'], 27, Polpierwsze['x'], Polpierwsze['y'], Polpierwsze['z'])
                        if dstCheckPolpierwsze <= 1.2 then
                            if IsControlJustPressed(0, 38) then
								Openkurwajebanawindapolice()
                            end
                        end
				elseif dstCheckPoldrugie <= 1.2 then
                    DrawM(Poldrugie['Information'], 27, Poldrugie['x'], Poldrugie['y'], Poldrugie['z'])
                        if dstCheckPoldrugie <= 1.2 then
                            if IsControlJustPressed(0, 38) then
								Openkurwajebanawindapolice()
                            end
                        end
				elseif dstCheckPoltrzecie <= 1.2 then
                    DrawM(Poltrzecie['Information'], 27, Poltrzecie['x'], Poltrzecie['y'], Poltrzecie['z'])
                        if dstCheckPoltrzecie <= 1.2 then
                            if IsControlJustPressed(0, 38) then
								Openkurwajebanawindapolice()
                            end
                        end
				elseif dstCheckPolczwarte <= 1.2 then
                    DrawM(Polczwarte['Information'], 27, Polczwarte['x'], Polczwarte['y'], Polczwarte['z'])
                        if dstCheckPolczwarte <= 1.2 then
                            if IsControlJustPressed(0, 38) then
								Openkurwajebanawindapolice()
                            end
                        end
				elseif dstCheckPolpiate <= 1.2 then
                    DrawM(Polpiate['Information'], 27, Polpiate['x'], Polpiate['y'], Polpiate['z'])
                        if dstCheckPolpiate <= 1.2 then
                            if IsControlJustPressed(0, 38) then
								Openkurwajebanawindapolice()
                            end
                        end
				elseif dstCheckPolszuste <= 1.2 then
                    DrawM(Polszuste['Information'], 27, Polszuste['x'], Polszuste['y'], Polszuste['z'])
                        if dstCheckPolszuste <= 1.2 then
                            if IsControlJustPressed(0, 38) then
								Openkurwajebanawindapolice()
                            end
                        end
                end
            end
        end
    end)
end

function Openkurwajebanawinda()
		ESX.TriggerServerCallback('windastatus2', function(status)
		TriggerServerEvent('windastatus', 'otwarty')
		local elements = {

			{label = _U('1'),     value = '1'},
			{label = _U('4'),     value = '4'},
			{label = _U('5'),  value = '5'},
			{label = _U('10'), value = '10'}
		}

		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'winda_actions', {
			title    = _U('winda'),
			align    = 'center',
			elements = elements
		}, function(data, menu)
		
			if data.current.value == '1' then
				menu.close()	
				DoScreenFadeOut(100)
				Citizen.Wait(750)
				ESX.Game.Teleport(PlayerPedId(), {x = 335.69, y = -580.19, z = 28.9})
				DoScreenFadeIn(100)
			elseif data.current.value == '4' then
				menu.close()
				DoScreenFadeOut(100)
				Citizen.Wait(750)
				ESX.Game.Teleport(PlayerPedId(), {x = 331.38, y = -592.75, z = 43.28})
				DoScreenFadeIn(100)		
			elseif data.current.value == '5' then
				menu.close()
				DoScreenFadeOut(100)
				Citizen.Wait(750)
				ESX.Game.Teleport(PlayerPedId(), {x = 335.90, y = -580.23, z = 48.24})
				DoScreenFadeIn(100)	
			elseif data.current.value == '10' then
				menu.close()
				DoScreenFadeOut(100)
				Citizen.Wait(750)
				ESX.Game.Teleport(PlayerPedId(), {x = 335.83, y = -580.17, z = 74.07})
				DoScreenFadeIn(100)
			end

		end, function(data, menu)
			menu.close()
			TriggerServerEvent('windastatus', 'zamkniety')

			CurrentAction     = 'winda_actions_menu'
			CurrentActionMsg  = _U('open_actions')
			CurrentActionData = {}
		end)
	end)
end

function Openkurwajebanawindapolice()
		ESX.TriggerServerCallback('windastatus2', function(status)
		TriggerServerEvent('windastatus', 'otwarty')
		local elements = {

			{label = _U('polminus1'),     value = 'polminus1'},
			{label = _U('polminus2'),     value = 'polminus2'},
			{label = _U('polminus3'),     value = 'polminus3'},
			{label = _U('poljeden'),     value = 'poljeden'},
			{label = _U('poldwa'),     value = 'poldwa'},
			{label = _U('poltrzy'),     value = 'poltrzy'},
			{label = _U('polcztery'),     value = 'polcztery'},
			{label = _U('polpiec'),     value = 'polpiec'},
			{label = _U('polszesc'),     value = 'polszesc'}
		}

		ESX.UI.Menu.CloseAll()

		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'winda_actions', {
			title    = _U('winda'),
			align    = 'center',
			elements = elements
		}, function(data, menu)
		
			if data.current.value == 'polminus1' then
				menu.close()	
				DoScreenFadeOut(100)
				Citizen.Wait(750)
				ESX.Game.Teleport(PlayerPedId(), {x = -1096.12, y = -850.54, z = 4.88})
				DoScreenFadeIn(100)
			elseif data.current.value == 'polminus2' then
				menu.close()
				DoScreenFadeOut(100)
				Citizen.Wait(750)
				ESX.Game.Teleport(PlayerPedId(), {x = -1096.12, y = -850.54, z = 10.27})
				DoScreenFadeIn(100)		
			elseif data.current.value == 'polminus3' then
				menu.close()
				DoScreenFadeOut(100)
				Citizen.Wait(750)
				ESX.Game.Teleport(PlayerPedId(), {x = -1096.12, y = -850.54, z = 13.68})
				DoScreenFadeIn(100)		
			elseif data.current.value == 'poljeden' then
				menu.close()
				DoScreenFadeOut(100)
				Citizen.Wait(750)
				ESX.Game.Teleport(PlayerPedId(), {x = -1096.12, y = -850.54, z = 19.00})
				DoScreenFadeIn(100)	
			elseif data.current.value == 'poldwa' then
				menu.close()
				DoScreenFadeOut(100)
				Citizen.Wait(750)
				ESX.Game.Teleport(PlayerPedId(), {x = -1096.12, y = -850.54, z = 23.03})
				DoScreenFadeIn(100)		
			elseif data.current.value == 'poltrzy' then
				menu.close()
				DoScreenFadeOut(100)
				Citizen.Wait(750)
				ESX.Game.Teleport(PlayerPedId(), {x = -1096.12, y = -850.54, z = 26.82})
				DoScreenFadeIn(100)		
			elseif data.current.value == 'polcztery' then
				menu.close()
				DoScreenFadeOut(100)
				Citizen.Wait(750)
				ESX.Game.Teleport(PlayerPedId(), {x = -1096.12, y = -850.54, z = 30.75})
				DoScreenFadeIn(100)		
			elseif data.current.value == 'polpiec' then
				menu.close()
				DoScreenFadeOut(100)
				Citizen.Wait(750)
				ESX.Game.Teleport(PlayerPedId(), {x = -1096.12, y = -850.54, z = 34.36})
				DoScreenFadeIn(100)		
			elseif data.current.value == 'polszesc' then
				menu.close()
				DoScreenFadeOut(100)
				Citizen.Wait(750)
				ESX.Game.Teleport(PlayerPedId(), {x = -1096.12, y = -850.54, z = 38.24})
				DoScreenFadeIn(100)						
			end

		end, function(data, menu)
			menu.close()
			TriggerServerEvent('windastatus', 'zamkniety')

			CurrentAction     = 'winda_actions_menu'
			CurrentActionMsg  = _U('open_actions')
			CurrentActionData = {}
		end)
	end)
end

Citizen.CreateThread(function()
	while true do
		Wait(10)
		local coords      = GetEntityCoords(GetPlayerPed(-1))
		local isInMarker  = false
		local currentZone = nil

		if(GetDistanceBetweenCoords(coords, 335.69, -580.19, 28.9, true) < 1.5) then
			isInMarker  = true
		elseif(GetDistanceBetweenCoords(coords, 331.38, -592.75, 43.28, true) < 1.5) then
			isInMarker  = true
		elseif(GetDistanceBetweenCoords(coords, 335.90, -580.23, 48.24, true) < 1.5) then
			isInMarker  = true
		elseif(GetDistanceBetweenCoords(coords, 335.83, -580.17, 74.07, true) < 1.5) then
			isInMarker  = true
		-- maxia zjebana komenda
		elseif(GetDistanceBetweenCoords(coords, -1096.12, -850.54, 4.88, true) < 1.5) then
			isInMarker  = true
		elseif(GetDistanceBetweenCoords(coords, -1096.12, -850.54, 10.27, true) < 1.5) then
			isInMarker  = true
		elseif(GetDistanceBetweenCoords(coords, -1096.12, -850.54, 13.68, true) < 1.5) then
			isInMarker  = true
		elseif(GetDistanceBetweenCoords(coords, -1096.12, -850.54, 19.00, true) < 1.5) then
			isInMarker  = true
		elseif(GetDistanceBetweenCoords(coords, -1096.12, -850.54, 23.03, true) < 1.5) then
			isInMarker  = true
		elseif(GetDistanceBetweenCoords(coords, -1096.12, -850.54, 26.82, true) < 1.5) then
			isInMarker  = true
		elseif(GetDistanceBetweenCoords(coords, -1096.12, -850.54, 30.75, true) < 1.5) then
			isInMarker  = true
		elseif(GetDistanceBetweenCoords(coords, -1096.12, -850.54, 34.36, true) < 1.5) then
			isInMarker  = true
		elseif(GetDistanceBetweenCoords(coords, -1096.12, -850.54, 38.24, true) < 1.5) then
			isInMarker  = true
		end
			
		if isInMarker and not HasAlreadyEnteredMarker then
			HasAlreadyEnteredMarker = true
			TriggerServerEvent('windastatus', 'zamkniety')
		elseif not isInMarker and HasAlreadyEnteredMarker then
			HasAlreadyEnteredMarker = false
			TriggerServerEvent('windastatus', 'zamkniety')
		end
	end
end)


function DrawM(hint, type, x, y, z)
	ESX.Game.Utils.DrawText3D({x = x, y = y, z = z + 1.0}, hint, 0.4)
	DrawMarker(type, x, y, z, 0.0, 0.0, 0.0, 0, 0.0, 0.0, 1.5, 1.5, 1.5, 255, 255, 255, 100, false, true, 2, false, false, false, false)
end

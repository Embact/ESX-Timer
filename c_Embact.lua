
RegisterNetEvent('count')
	AddEventHandler('count', function(number)
		Citizen.CreateThread(function()
			for i = number,1,-1 do
				if (i == number) then
					notification("~y~               Time Start")	
				end
				notification("~g~                      "..i)					
				Citizen.Wait(1000)
				if (i == 1) then
					notification("~r~     Fire Bam Bam Bam...")	
				end
			end
		end)
		
	end)

function notification(msg)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(msg)
	DrawNotification(false, false)
end
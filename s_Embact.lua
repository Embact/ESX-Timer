
AddEventHandler('chatMessage', function(source, n, msg)
	for n = 1,100,1 do 
	
		local msg = string.lower(msg)
		
		if msg == "/timer "..n then
			CancelEvent()
			TriggerClientEvent('count', -1, n)
		end	
		
	end
	
end)

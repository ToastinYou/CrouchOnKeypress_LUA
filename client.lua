Citizen.CreateThread(function()
	local crouched = false
	while true do
		Citizen.Wait(0)

    	local ped = GetPlayerPed(-1)

    	if DoesEntityExist(ped) and not IsEntityDead(ped) and not IsPauseMenuActive() then
	    	if IsControlJustReleased(0, 19) then
	    		RequestAnimSet("move_ped_crouched")

	    		if crouched then
	    			ResetPedMovementClipset(ped, 0.0)
	    			crouched = false
	    		elseif not crouched then
	    			SetPedMovementClipset(ped, "move_ped_crouched", 1.0)
	    			crouched = true
	    		end
	    	end
    	end
    end
end)
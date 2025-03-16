Citizen.CreateThread(function()
   
    while true do
       
        Citizen.Wait( 100 ) 
        
       
        local ped = PlayerPedId()
       
        if IsPedInAnyVehicle( ped, false ) then
         
            local vehicle = GetVehiclePedIsIn( ped, false )
          
            local model = GetEntityModel( vehicle )
          
            local modelName = GetDisplayNameFromVehicleModel( model ):lower() 
            
           
            if Cqwer.SpeedLimits[ modelName ] then
               
                local maxSpeed = Cqwer.SpeedLimits[ modelName ] / 3.6 
                
                if GetEntitySpeed( vehicle ) > maxSpeed then
                    
                    SetEntityMaxSpeed( vehicle, maxSpeed )
               
                end
            
            else
            
                SetEntityMaxSpeed( vehicle, 999.0 ) 
           
            end
       
        end
   
    end

end)

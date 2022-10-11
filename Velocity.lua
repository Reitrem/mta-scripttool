gMe = getLocalPlayer()

function velocity ( hitPlayer, matchingDimension )

    vehicle = getPedOccupiedVehicle ( hitPlayer )
    if hitPlayer ~= gMe then return end
        
    if source == [marker] then
        
        setElementVelocity (vehicle, [x], [y], [z])  -- !
        
    end
end

addEventHandler( "onClientResourceStart", getResourceRootElement(getThisResource()), Marker )
addEventHandler ( "onClientMarkerHit", getRootElement(), velocity)
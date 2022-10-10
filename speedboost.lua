gMe = getLocalPlayer()

function Marker()

    marker1 = createMarker ( 5761.8125, -2087.38671875, 2547.2268066406, "corona", 2, 0, 0, 0, 0)  -- Cordinates & marker

end

function speedboost ( hitPlayer, matchingDimension )

    vehicle = getPedOccupiedVehicle ( hitPlayer )
    if hitPlayer ~= gMe then return end
        
    if source == marker1 then
    local x, y, z = getElementVelocity(vehicle)   
    local speed = 1.5 -- Adjust
    setElementVelocity (vehicle, x*speed, y*speed, z*speed)  -- !
        
    end
end

addEventHandler( "onClientResourceStart", getResourceRootElement(getThisResource()), Marker )
addEventHandler ( "onClientMarkerHit", getRootElement(), speedboost )
gMe = getLocalPlayer()

function Marker()

    marker1 = createMarker ( 5761.8125, -2087.38671875, 2547.2268066406, "corona", 2, 0, 0, 0, 0)  -- Cordinates & marker

end

function velocity ( hitPlayer, matchingDimension )

    vehicle = getPedOccupiedVehicle ( hitPlayer )
    if hitPlayer ~= gMe then return end
        
    if source == marker1 then
        
        setElementVelocity (vehicle, 1, 1, 1)  -- !
        
    end
end

addEventHandler( "onClientResourceStart", getResourceRootElement(getThisResource()), Marker )
addEventHandler ( "onClientMarkerHit", getRootElement(), velocity)
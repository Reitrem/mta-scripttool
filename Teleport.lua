function Marker()

    marker1 = createMarker ( 5761.8125, -2087.38671875, 2547.2268066406, "corona", 2, 0, 0, 0, 0)  -- Cordinates & marker

end

function teleport(player)

    if getElementType(player)=="player" then
    local vehicle=getPedOccupiedVehicle(player)

    if source == marker1 then
        setElementPosition(vehicle, 7872.025390625, 961.12890625, 173.45460510254)
        setElementRotation(vehicle, 0, 0, 0)
        setVehicleFrozen(vehicle, true)
        setTimer(setVehicleFrozen, 1000, 1, vehicle, false)
        end
    end
end

addEventHandler( "onClientResourceStart", getResourceRootElement(getThisResource()), Marker )
addEventHandler("onClientMarkerHit", getRootElement(), teleport)
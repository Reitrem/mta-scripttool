scriptType = {
    "Velocity",
    "Teleport"
}

local row = {}

function initGUI ( theResource )
    -- getResourceRootElement(getThisResource()) at the bottom means it will only create the gui on this resource start
    -- Create a window for our spawnscreen, with the title "Select your weapons".
    window1 = guiCreateWindow ( 0.15, 0.33, 0.2, 0.34, "betterNetools", true )
    -- create an OK button to allow the user to confirm their selections, and attach it to the confirmSelection function
    window1OKButton = guiCreateButton ( 0.4, 0.85, 0.20, 0.15, "Create", true, window1 )
    guiWindowSetMovable ( window1, true )
    guiWindowSetSizable ( window1, true )
    -- create our gridlist, which fills up most of the window.
    window1GridList = guiCreateGridList ( 0, 0.1, 1, 0.9, true, window1 )
    guiGridListSetSelectionMode ( window1GridList, 2 ) -- ensure the selection mode is one per column
    guiGridListAddColumn ( window1GridList, "Script Type", 0.3 )
    row[1] = guiGridListAddRow ( window1GridList )
    row[2] = guiGridListAddRow ( window1GridList )
    
    guiGridListSetItemText ( window1GridList, row[1], 1, "Velocity", false, false )
    guiGridListSetItemText ( window1GridList, row[2], 1, "Teleport", false, false )
end
addEventHandler ( "onClientResourceStart", getResourceRootElement(getThisResource()), initGUI )
addEventHandler ( "onClientGUIClick", window1OKButton, interactGUI, false )

function interactGUI()

end
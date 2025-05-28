VERSION "4.0"

WINDOW 101 "" 100 100 1280 800
BEGIN
    KEYBOARDNAVIGATION
    EVENTMASK 3287287500
    NAME "Form"

    TOOLBUTTON 100, "", 1218, 5, 24, 24
    BEGIN
        IMAGEFILE "Butbar014.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnHelp"
        DISABLED
        INVISIBLE
        SHORTCUE "Open the Help system"
    END

    TOOLBUTTON 102, "", 7, 5, 24, 24
    BEGIN
        IMAGEFILE "zoom_out.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnZoomOut"
        SHORTCUE "Open the Help system"
    END

    TOOLBUTTON 103, "", 35, 5, 24, 24
    BEGIN
        IMAGEFILE "zoom_in.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnZoomIn"
        SHORTCUE "Open the Help system"
    END

    TOOLBUTTON 104, "", 1246, 5, 24, 24
    BEGIN
        IMAGEFILE "menImage059.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnObserve"
        SHORTCUE "observe the browser events"
    END
END

POPUPMENU 101
BEGIN
    NAME "puMenu"
    MENU-ITEM 1 "previous"
    BEGIN
        NAME "miPrevious"
    END
    MENU-ITEM 2 "hardcopy"
    BEGIN
        NAME "miHardcopy"
    END
END

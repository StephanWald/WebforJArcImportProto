VERSION "4.0"

WINDOW 1 "About CarIT" 100 100 270 335
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3824158668
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmAbout"

    IMAGE 100, 10, 8, 250, 125
    BEGIN
        IMAGEFILE "CarITLogo.png"
        NAME "Image"
    END

    GROUPBOX 102, "", 10, 136, 250, 64
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Group Control"
    END

    STATICTEXT 103, "Version 5.01", 20, 153, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Version"
    END

    STATICTEXT 104, "Copyright © 2000-2004 Audev B.V.", 20, 173, 223, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Copyright"
    END

    STATICTEXT 106, "BBj© is a registered trademark of Basis International Ltd.", 20, 216, 230, 30
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtVpro"
    END

    STATICTEXT 107, "TRIO is a registered trademark of SW Tools.", 20, 256, 230, 30
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTrio"
    END

    GROUPBOX 108, "", 10, 201, 250, 95
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Group Control"
    END

    BUTTON 1, "OK", 100, 300, 70, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOK"
        SHORTCUE "Click to open"
    END
END

WINDOW 2 "About CarIT" 100 100 270 390
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3824158668
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmAboutProgram"

    IMAGE 100, 10, 8, 250, 125
    BEGIN
        IMAGEFILE "CarITLogo.png"
        NAME "Image"
    END

    GROUPBOX 102, "", 10, 140, 250, 121
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Group Control"
    END

    STATICTEXT 103, "Build", 24, 177, 225, 29
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Build"
    END

    STATICTEXT 104, "Copyright © 2000-2004 Audev B.V.", 24, 234, 225, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Copyright"
    END

    STATICTEXT 106, "BBj© is a registered trademark of Basis International Ltd.", 24, 274, 225, 29
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtVpro"
    END

    STATICTEXT 107, "TRIO is a registered trademark of SW Tools.", 24, 311, 225, 32
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTrio"
    END

    GROUPBOX 108, "", 10, 262, 250, 90
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Group Control"
    END

    BUTTON 1, "OK", 95, 355, 70, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOK"
        SHORTCUE "Click to open"
    END

    STATICTEXT 109, "Program", 24, 157, 225, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Program"
    END

    STATICTEXT 110, "Version", 24, 214, 225, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Version"
    END
END

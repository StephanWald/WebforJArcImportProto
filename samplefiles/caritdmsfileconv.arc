VERSION "4.0"

WINDOW 1 "File conversion" 5 84 451 180
BEGIN
    ICON "Carit.ico"
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 2210399236
    RADIOGROUP 1013, 1014
    NAME "FrmConvFile"
    DIALOGBEHAVIOR
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 1, "&Convert", 118, 148, 60, 22
    BEGIN
        NAME "pbnConvert"
        SHORTCUE "Start the file conversion"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 2, "C&lose", 203, 148, 60, 22
    BEGIN
        NAME "pbnClose"
        SHORTCUE "Rejects your changes and closes the dialogue"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Help", 288, 148, 60, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Opens the Easy Car Connect Help system "
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 1001, "There must be a ../CarITDMS/Datasave directory on the system and on the drive where the data is the program ../Basis/MkRecover/mrebuild.exe must be available !!", 10, 15, 425, 46
    BEGIN
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "txtInfo1"
    END

    STATICTEXT 1010, "&File to convert", 10, 72, 100, 19
    BEGIN
        NAME "txtFile"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 1011, "", 115, 70, 300, 19
    BEGIN
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "File_to_convert"
        CLIENTEDGE
        SHORTCUE "Enter location and name of file to import"
        FONT "Microsoft Sans Serif" 9
    END

    TOOLBUTTON 1012, "", 420, 70, 19, 19
    BEGIN
        IMAGEFILE "Butfrm003.png"
        NAME "tbn_SearchFile"
        SHORTCUE "Select an import file"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 1013, "Create &high recoverable 64 bits file", 10, 97, 300, 19
    BEGIN
        CHECKED
        GROUP
        NAME "rbnHigh"
        SHORTCUE "Select to create high recoverable 64 bits file"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 1014, "Create &standard file (for UNIX systems)", 10, 117, 300, 19
    BEGIN
        GROUP
        NAME "rbnStandard"
        SHORTCUE "Select to create standard file "
        FONT "Microsoft Sans Serif" 9
    END
END

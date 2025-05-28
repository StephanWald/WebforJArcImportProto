VERSION "4.0"

WINDOW 1 "Car IT Version" 170 232 337 173
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3284141060
    NAME "frmCarITReleaseP"
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 1, "OK", 40, 140, 60, 22
    BEGIN
        NAME "pbnOk"
        SHORTCUE "Save changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 2, "Cancel", 110, 140, 60, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Reject unsaved changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Help", 180, 140, 60, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 10000, "Version", 10, 16, 100, 19
    BEGIN
        NAME "txtVersion"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 10001, "", 110, 14, 50, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Version"
        CLIENTEDGE
    END

    STATICTEXT 10010, "Sub-version", 10, 36, 100, 19
    BEGIN
        NAME "txtPatch"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 10011, "", 110, 34, 50, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Patch"
        CLIENTEDGE
    END

    STATICTEXT 10012, "ServicePack", 10, 56, 100, 19
    BEGIN
        NAME "txtHotfix"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 10013, "", 110, 54, 50, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Hotfix"
        CLIENTEDGE
    END

    STATICTEXT 10014, "Country", 10, 76, 100, 19
    BEGIN
        NAME "txtCountry_code"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 10015, "", 110, 72, 214, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Country_code"
        CLIENTEDGE
    END

    STATICTEXT 10016, "&Description", 10, 96, 100, 19
    BEGIN
        NAME "txtDescription"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 10017, "", 110, 94, 214, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 50
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Version_descr"
        CLIENTEDGE
        FONT "Microsoft Sans Serif" 9
    END
END

VERSION "4.0"

WINDOW 101 "Leeuwkes Print" 1 80 720 420
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 2210399236
    RADIOGROUP 11018, 11019, 11020
    RADIOGROUP 11041, 11042
    RADIOGROUP 11058, 11059, 11060
    RADIOGROUP 11083, 11084
    NAME "FrmLeeuwkesPrint"
    DEFAULTFONT "Microsoft Sans Serif" 9

    BUTTON 1, "OK", 500, 390, 60, 22
    BEGIN
        NAME "pbnOk"
        SHORTCUE "Save changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 2, "Cancel", 570, 390, 60, 22
    BEGIN
        NAME "pbnCancel"
        SHORTCUE "Reject changes"
        FONT "Microsoft Sans Serif" 9
    END

    BUTTON 3, "&Help", 640, 390, 60, 22
    BEGIN
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11001, "&Workshop", 15, 15, 125, 19
    BEGIN
        NAME "txtWorkshop"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11002, "", 140, 13, 200, 380
    BEGIN
        NAME "lbnWorkshop"
        SHORTCUE "Choose the workshop"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 11009, "", 0, 36, 724, 10
    BEGIN
        NAME "gbxInfo4"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 11010, "List -1- : Incoming cars in the workshop cars since the last print out", 5, 60, 350, 215
    BEGIN
        NAME "gbxInfo2"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11011, "Date last print out :", 15, 100, 125, 19
    BEGIN
        NAME "txtListdate1"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11012, "", 140, 98, 100, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "blp_list1_date"
        CLIENTEDGE
    END

    STATICTEXT 11013, "Page no. last print out :", 15, 80, 125, 19
    BEGIN
        NAME "txtPageNo1"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11014, "", 140, 78, 100, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "blp_list1_pagenr"
        CLIENTEDGE
    END

    STATICTEXT 11015, "&Date this print out ", 15, 121, 125, 19
    BEGIN
        NAME "txtListdate1"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11016, "", 140, 119, 70, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Init_date_1"
        CLIENTEDGE
        SHORTCUE "Enter date this last print out was made"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11018, "&No action for this list", 15, 142, 325, 19
    BEGIN
        GROUP
        NAME "rbnNoActList1"
        SHORTCUE "Select to take no action for this list"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11019, "Do an &update for this list and print the new pages", 15, 162, 325, 19
    BEGIN
        CHECKED
        GROUP
        NAME "rbnUpdList1"
        SHORTCUE "Select to do update for this list and print new pages"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11020, "Pr&int duplicate pages for this list", 15, 182, 325, 19
    BEGIN
        GROUP
        NAME "rbnDuplList1"
        SHORTCUE "Select to print duplicate pages for this list"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11021, "Page number &from", 32, 205, 100, 19
    BEGIN
        NAME "txtPageFrom1"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11022, "", 140, 203, 70, 19
    BEGIN
        MASK  "000000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "inePage_from_1"
        CLIENTEDGE
        SHORTCUE "Enter the first page to print for this list"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11023, "Page number &to", 32, 225, 100, 19
    BEGIN
        NAME "txtPageTo1"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11024, "", 140, 223, 70, 19
    BEGIN
        MASK  "000000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "inePage_to_1"
        CLIENTEDGE
        SHORTCUE "Enter the last page to print for this list"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11027, "Typ&e of form", 15, 245, 125, 19
    BEGIN
        NAME "txtForn1"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11028, "", 140, 243, 200, 380
    BEGIN
        NAME "lbnForm1"
        SHORTCUE "Choose the type of form"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 11040, "List -3- : Cars that are in the workshop", 5, 280, 350, 90
    BEGIN
        NAME "gbxInfo3"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11041, "N&o action for this list", 15, 300, 325, 19
    BEGIN
        GROUP
        NAME "rbnNoActList3"
        SHORTCUE "Select to take no action for this list"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11042, "Pri&nt this list", 15, 320, 325, 19
    BEGIN
        CHECKED
        GROUP
        NAME "rbnPrintList3"
        SHORTCUE "Select to print this list"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11045, "T&ype of form", 15, 340, 125, 19
    BEGIN
        NAME "txtFormType3"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11046, "", 140, 340, 200, 380
    BEGIN
        NAME "lbnForm3"
        SHORTCUE "Choose the type of form"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 11050, "List -2- : Cars that have left the workshop since the last print out", 365, 60, 350, 215
    BEGIN
        NAME "gbxInfo3"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11051, "Date last print out :", 375, 100, 125, 19
    BEGIN
        NAME "txtListdate2"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11052, "", 500, 98, 100, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "blp_list2_date"
        CLIENTEDGE
    END

    STATICTEXT 11053, "Page no. last print out :", 375, 80, 125, 19
    BEGIN
        NAME "txtPageNo2"
        FONT "Microsoft Sans Serif" 9
    END

    CUSTOMEDIT 11054, "", 500, 78, 100, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "blp_list2_pagenr"
        CLIENTEDGE
    END

    STATICTEXT 11055, "Da&te this print out ", 375, 121, 125, 19
    BEGIN
        NAME "txtListdate2"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11056, "", 500, 119, 70, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "Init_date_2"
        CLIENTEDGE
        SHORTCUE "Enter date this print out was made"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11058, "No &action for this list", 375, 142, 325, 19
    BEGIN
        GROUP
        NAME "rbnNoActList2"
        SHORTCUE "Select to take no action for this list"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11059, "Do an up&date for this list and print the new pages", 375, 162, 325, 19
    BEGIN
        CHECKED
        GROUP
        NAME "rbnUpdList2"
        SHORTCUE "Select to do update for this list and print new pages"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11060, "Pr&int duplicate pages for this list", 375, 182, 325, 19
    BEGIN
        GROUP
        NAME "rbnDuplList2"
        SHORTCUE "Select to print duplicate pages for this list"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11061, "&Page number fro&m", 392, 205, 100, 19
    BEGIN
        NAME "txtPageFrom2"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11062, "", 500, 203, 70, 19
    BEGIN
        MASK  "000000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "inePage_from_2"
        CLIENTEDGE
        SHORTCUE "Enter the first page to print for this list"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11063, "Page n&umber to", 392, 225, 100, 19
    BEGIN
        NAME "txtPageTo2"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11064, "", 500, 223, 70, 19
    BEGIN
        MASK  "000000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "inePage_to_2"
        CLIENTEDGE
        SHORTCUE "Enter the last page to print for this list"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11067, "Type of &form", 375, 245, 125, 19
    BEGIN
        NAME "txtForn2"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11068, "", 500, 243, 200, 380
    BEGIN
        NAME "lbnForm2"
        SHORTCUE "Choose the type of form"
        FONT "Microsoft Sans Serif" 9
    END

    GROUPBOX 11080, "Printer information", 365, 280, 350, 90
    BEGIN
        NAME "gbxInfo4"
        FONT "Microsoft Sans Serif" 9
    END

    STATICTEXT 11081, "&List date", 375, 300, 110, 19
    BEGIN
        NAME "txtListdate"
        FONT "Microsoft Sans Serif" 9
    END

    INPUTE 11082, "", 500, 298, 70, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        NAME "List_date"
        CLIENTEDGE
        SHORTCUE "Enter a list date"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11083, "&View ", 375, 319, 110, 19
    BEGIN
        GROUP
        NAME "rbnView"
        SHORTCUE "Select to view range"
        FONT "Microsoft Sans Serif" 9
    END

    RADIOBUTTON 11084, "&Print ", 375, 340, 110, 19
    BEGIN
        CHECKED
        GROUP
        NAME "rbnPrint"
        SHORTCUE "Select to print forms"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11085, "", 500, 319, 200, 380
    BEGIN
        NAME "lbnViewDevice"
        INVISIBLE
        SHORTCUE "Choose viewing device"
        FONT "Microsoft Sans Serif" 9
    END

    LISTBUTTON 11086, "", 500, 340, 200, 380
    BEGIN
        NAME "lbnPrintDevice"
        SHORTCUE "Choose printing device"
        FONT "Microsoft Sans Serif" 9
    END
END

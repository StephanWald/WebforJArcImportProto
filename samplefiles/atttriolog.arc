VERSION "4.0"

WINDOW 1 "Attachment via TRIO Reports Logging" 10 10 1032 695
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT SIZABLE
    EVENTMASK 3287286796
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    RADIOGROUP 11020, 11021, 11022
    NAME "FrmAttTrioLog"

    BUTTON 1, "&Close", 685, 665, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnClose"
        SHORTCUE "Close the program"
    END

    BUTTON 3, "&Display log", 770, 665, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnDisplayLog"
        SHORTCUE "Display the logging of the selection"
    END

    BUTTON 5, "&Help", 940, 665, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    BUTTON 4, "C&lear", 855, 665, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnClear"
        SHORTCUE "Open the clear log dialogue"
    END

    STATICTEXT 11000, "&From date", 5, 12, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFromDate"
    END

    INPUTE 11001, "", 110, 10, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ineFrom_date"
        CLIENTEDGE
        SHORTCUE "Enter the from date"
    END

    STATICTEXT 11002, "&To date", 5, 32, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtToDate"
    END

    INPUTE 11003, "", 110, 30, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ineTo_date"
        CLIENTEDGE
        SHORTCUE "Enter the to date"
    END

    STATICTEXT 11010, "&Program", 230, 12, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtProgram"
    END

    LISTBUTTON 11011, "", 335, 10, 340, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnProgram"
        SHORTCUE "Choose the program"
    END

    STATICTEXT 11015, "T&ype of list", 230, 32, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtListcode"
    END

    LISTBUTTON 11016, "", 335, 30, 340, 380
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnTypeOfList"
        SHORTCUE "Choose the type of list"
    END

    CHILD-WINDOW 101, 51, 5, 64
    BEGIN
        NAME "chd_frmAttLog" 
    END

    RADIOBUTTON 11020, "&Erroneous ", 720, 12, 150, 19
    BEGIN
        CHECKED
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnError"
        SHORTCUE "Select to display erroneous"
    END

    RADIOBUTTON 11021, "&Correctly processed", 720, 32, 150, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnCorrect"
        SHORTCUE "Select to display correctly processed"
    END

    RADIOBUTTON 11022, "&All", 875, 14, 150, 19
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbnAll"
        SHORTCUE "Select to display all"
    END
END

WINDOW 2 "Clear TRIO Attachment Log" 5 105 220 132
BEGIN
    ICON "Carit.ico"
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3287286796
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmAttTrioClear"

    STATICTEXT 2011, "From date ", 20, 30, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDate_from"
    END

    STATICTEXT 2012, "To date", 20, 50, 90, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDate_to"
    END

    BUTTON 1, "OK", 10, 100, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 80, 100, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Reject unsaved changes"
    END

    GROUPBOX 2000, "", 5, 8, 210, 76
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxOrderinf"
    END

    BUTTON 3, "&Help", 150, 100, 60, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    INPUTE 12011, "", 121, 28, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ineFrom_date"
        CLIENTEDGE
        SHORTCUE "Enter the from date"
    END

    INPUTE 12012, "", 121, 48, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ineTo_date"
        CLIENTEDGE
        SHORTCUE "Enter the to date"
    END
END

WINDOW 3 "Attachment via TRIO Reports Logging Details" 5 64 1032 434
BEGIN
    DIALOGBEHAVIOR
    KEYBOARDNAVIGATION
    EVENTMASK 3287287500
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "FrmAttTrioLogDet"

    STATICTEXT 13011, "&Date / time", 425, 12, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtDatTime"
    END

    STATICTEXT 13001, "&Program", 5, 12, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtProgram"
    END

    STATICTEXT 13005, "T&ype of list", 5, 32, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtListcode"
    END

    STATICTEXT 13015, "&Status", 425, 32, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtStatus"
    END

    CUSTOMEDIT 13002, "", 106, 10, 300, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "programid"
        CLIENTEDGE
    END

    CUSTOMEDIT 13006, "", 106, 30, 300, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "listcode"
        CLIENTEDGE
    END

    CUSTOMEDIT 13012, "", 526, 10, 275, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "att_log_dattim"
        CLIENTEDGE
    END

    CUSTOMEDIT 13016, "", 526, 30, 300, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "hea_status"
        CLIENTEDGE
    END

    GRID 13021, "", 7, 63, 1012, 111
    BEGIN
        ROWS 10
        COLUMNHEAD 24, 13022
        COLUMNS 4
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 175
        GRIDCOLTITLE 0, "Object type"
        GRIDCOLWIDTH 1, 117
        GRIDCOLTITLE 1, "Object key"
        GRIDCOLWIDTH 2, 300
        GRIDCOLTITLE 2, "Object description"
        GRIDCOLWIDTH 3, 400
        GRIDCOLTITLE 3, "Status"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclAttTrioLogDet"
        CLIENTEDGE
    END

    STATICTEXT 13030, "&Object type", 5, 188, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtObject"
    END

    CUSTOMEDIT 13031, "", 106, 186, 300, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "object_type"
        CLIENTEDGE
    END

    STATICTEXT 13034, "&Object key", 5, 208, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtObjectKey"
    END

    CUSTOMEDIT 13035, "", 106, 206, 300, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "object_key"
        CLIENTEDGE
    END

    CUSTOMEDIT 13036, "", 416, 206, 500, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "object_descr"
        CLIENTEDGE
    END

    STATICTEXT 13040, "&Status", 5, 238, 100, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtStatus"
    END

    CUSTOMEDIT 13041, "", 106, 236, 500, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "status"
        CLIENTEDGE
    END

    STATICTEXT 13046, "&TRIO Object key", 15, 288, 150, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtTRIOObject"
    END

    CUSTOMEDIT 13047, "", 170, 286, 835, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "trio_object_key"
        CLIENTEDGE
    END

    GROUPBOX 13045, "Technical Info", 5, 268, 1017, 110
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclTechInfo"
    END

    STATICTEXT 13050, "&PDF file location", 15, 308, 150, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPDFLoc"
    END

    CUSTOMEDIT 13051, "", 170, 306, 835, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "pdf_file_loc"
        CLIENTEDGE
    END

    STATICTEXT 13052, "&PDF file name", 15, 328, 150, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPDFname"
    END

    CUSTOMEDIT 13053, "", 170, 326, 835, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "pdf_file_name"
        CLIENTEDGE
    END

    STATICTEXT 13056, "&PDF archive location", 15, 348, 150, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtPDFArchLoc"
    END

    CUSTOMEDIT 13057, "", 170, 346, 835, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "pdf_arch_loc"
        CLIENTEDGE
    END

    BUTTON 13058, "&Close", 772, 399, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnClose"
        SHORTCUE "Close the program"
    END

    BUTTON 13060, "&Help", 942, 399, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    BUTTON 13061, "&Retry", 857, 399, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnRetry"
        SHORTCUE "Retry"
    END
END

WINDOW 4 "Connect recovered PDF to invoice" 100 100 1040 490
BEGIN
    KEYBOARDNAVIGATION
    EVENTMASK 3287287500
    NAME "frmHisLink"

    GRID 14011, "", 7, 7, 1024, 441
    BEGIN
        ROWS 100
        COLUMNHEAD 19, 14012
        COLUMNS 5
        HSCROLLBAR
        VSCROLLBAR
        GRIDCOLWIDTH 0, 80
        GRIDCOLTITLE 0, "Order nr."
        GRIDCOLWIDTH 1, 80
        GRIDCOLTITLE 1, "Invoice nr."
        GRIDCOLWIDTH 2, 75
        GRIDCOLTITLE 2, "Date"
        GRIDCOLWIDTH 3, 349
        GRIDCOLTITLE 3, "Customer"
        GRIDCOLWIDTH 4, 420
        GRIDCOLTITLE 4, "Related car"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclHisLink"
        CLIENTEDGE
        SHORTCUE "Select the invoice(s) tot which the recovered PDF file should be connected; in case of a summary invoice multiple invoices can be selected."
    END

    BUTTON 14090, "&OK", 821, 460, 100, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOk"
        SHORTCUE "Click to select the order / invoice to which the recovered PDF file should be linked."
    END

    BUTTON 14093, "&Cancel", 927, 460, 100, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Click to cancel linking the PDF to an order / invoice"
    END
END

CHILD-WINDOW 101 0 0 1022 590
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwAttLog"

    GRID 10101, "", 0, 0, 1012, 580
    BEGIN
        ROWS 34
        COLUMNHEAD 24, 10102
        COLUMNS 5
        USERSIZE
        VSCROLLBAR
        GRIDCOLWIDTH 0, 75
        GRIDCOLTITLE 0, "Date"
        GRIDCOLWIDTH 1, 75
        GRIDCOLTITLE 1, "Time"
        GRIDCOLWIDTH 2, 225
        GRIDCOLTITLE 2, "Program"
        GRIDCOLWIDTH 3, 275
        GRIDCOLTITLE 3, "Type of list"
        GRIDCOLWIDTH 4, 342
        GRIDCOLTITLE 4, "Status"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclAttTrioLog"
        CLIENTEDGE
    END

    SCROLLBAR 10100, -100, 0, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    SCROLLBAR 10104, -100, 0, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    SCROLLBAR 10105, -100, 0, 25, 90
    BEGIN
        NAME "Vertical Scroll"
    END

    TOOLBUTTON 10110, "", 995, 1, 22, 22
    BEGIN
        IMAGEFILE "Butbar018.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDetails"
        SHORTCUE "Show details"
    END
END

VERSION "4.0"

WINDOW 101 "Bank Deutsches Kraftfahrzeuggewerbe" 100 100 1064 770
BEGIN
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    EVENTMASK 3287287500
    NAME "Form"

    BUTTON 1, "continue", 959, 735, 90, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "btnContinue"
    END

    BUTTON 150, "back", 7, 735, 90, 25
    BEGIN
        NAME "btnBack"
    END

    BUTTON 3, "re-open calculation of this quotation in BDK PHOENIX", 200, 735, 658, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "btnReopen"
        INVISIBLE
    END

    CHILD-WINDOW 101, 101, 7, 7
    BEGIN
        NAME "cwPage0" 
    END

    CHILD-WINDOW 102, 102, 7, 7
    BEGIN
        NAME "cwPage1" 
    END

    CHILD-WINDOW 103, 103, 7, 7
    BEGIN
        NAME "cwPage2" 
    END

    CHILD-WINDOW 104, 104, 7, 7
    BEGIN
        NAME "cwPage3" 
    END

    CHILD-WINDOW 104, 105, 7, 7
    BEGIN
        NAME "cwPage4" 
    END
END

CHILD-WINDOW 101 0 0 469 259
BEGIN
    INVISIBLE
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    RADIOGROUP 101, 102, 114
    RADIOGROUP 111, 112
    NAME "cwPage0"

    GROUPBOX 100, "get vehicle selection list via", 7, 7, 455, 133
    BEGIN
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "gcVia"
        NOT OPAQUE
    END

    RADIOBUTTON 101, "KBA Code", 28, 28, 90, 25
    BEGIN
        CHECKED
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbKba"
    END

    RADIOBUTTON 102, "ETS Code", 28, 63, 90, 25
    BEGIN
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbEts"
    END

    STATICTEXT 103, "HSN:", 147, 35, 48, 25
    BEGIN
        JUSTIFICATION 32768
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "stHSN"
    END

    EDIT 104, "", 203, 30, 90, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ecHSN"
        CLIENTEDGE
    END

    STATICTEXT 105, "TSN:", 301, 35, 48, 25
    BEGIN
        JUSTIFICATION 32768
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "stTSN"
    END

    EDIT 106, "", 357, 30, 90, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ecTSN"
        CLIENTEDGE
    END

    EDIT 107, "", 140, 63, 308, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "ecETS"
        CLIENTEDGE
    END

    GROUPBOX 108, "options influenting the resulting vehicle selection list", 7, 147, 455, 105
    BEGIN
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "gcMore"
        NOT OPAQUE
    END

    STATICTEXT 109, "registration date:", 21, 181, 119, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "stRegDate"
    END

    INPUTD 110, "", 140, 175, 154, 25
    BEGIN
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "inpdX"
        CLIENTEDGE
        MASK "%Dz.%Mz.%Yl"
        MAXLENGTH 10
        HIGHLIGHT
    END

    RADIOBUTTON 111, "Financing", 147, 210, 90, 25
    BEGIN
        CHECKED
        GROUP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbFinancing"
    END

    RADIOBUTTON 112, "Leasing", 357, 210, 90, 25
    BEGIN
        GROUP
        JUSTIFICATION 8192
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbLeasing"
    END

    STATICTEXT 113, "product domain:", 21, 214, 119, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "stProductDomain"
    END

    RADIOBUTTON 114, "Make, Modell, Body Style, Enginge Type etc.", 28, 98, 420, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbMak"
    END
END

CHILD-WINDOW 102 0 0 1056 720
BEGIN
    INVISIBLE
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "cwPage1"

    GROUPBOX 100, "pricelist variant search result", 7, 7, 1029, 658
    BEGIN
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "gcPriceList"
        NOT OPAQUE
    END

    GRID 106, "Grid", 21, 28, 1001, 630
    BEGIN
        ROWS 5
        COLUMNHEAD 25, 107
        COLUMNS 13
        HORIZLINES
        VERTLINES
        GRIDCOLWIDTH 0, 70
        GRIDCOLTITLE 0, "Pricelist Id"
        GRIDCOLWIDTH 1, 200
        GRIDCOLTITLE 1, "Model Name"
        GRIDCOLWIDTH 2, 110
        GRIDCOLTITLE 2, "Retail Price Gross"
        GRIDCOLWIDTH 3, 110
        GRIDCOLTITLE 3, "Retail Price Net"
        GRIDCOLTITLE 4, "KW"
        GRIDCOLTITLE 5, "PS"
        GRIDCOLTITLE 6, "Type of Engine"
        GRIDCOLTITLE 7, "Doors"
        GRIDCOLWIDTH 8, 100
        GRIDCOLTITLE 8, "pricelist from"
        GRIDCOLWIDTH 9, 100
        GRIDCOLTITLE 9, "pricelist to"
        GRIDCOLWIDTH 10, 100
        GRIDCOLTITLE 10, "Manufacturer"
        GRIDCOLWIDTH 11, 100
        GRIDCOLTITLE 11, "ETS-Code"
        GRIDCOLWIDTH 12, 10
        GRIDCOLTITLE 12, "score"
        NAME "qvgrid"
        CLIENTEDGE
    END
END

CHILD-WINDOW 103 0 0 798 294
BEGIN
    INVISIBLE
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    RADIOGROUP 105, 106
    NAME "cwPage2"

    GROUPBOX 100, "attachments", 7, 7, 791, 133
    BEGIN
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "gcAttach"
        NOT OPAQUE
    END

    CHECKBOX 101, "customer data", 21, 35, 119, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "cbCustomer"
    END

    STATICTEXT 102, "", 147, 40, 637, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "stCustData"
    END

    CHECKBOX 103, "vehicle options", 21, 70, 763, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "cbOptions"
    END

    GROUPBOX 104, "application domain", 7, 140, 791, 65
    BEGIN
        FONT "Microsoft Sans Serif" 10, Normal
        NAME "gcAppDomain"
        NOT OPAQUE
    END

    RADIOBUTTON 105, "private", 21, 168, 392, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbPRIVATE"
    END

    RADIOBUTTON 106, "business", 420, 168, 364, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "rbBUSINESS"
    END

    CHECKBOX 107, "dealer accesiores", 21, 105, 763, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "cbDealerOptions"
    END

    GROUPBOX 108, "company customer requirements", 7, 203, 791, 91
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gcLegalForm"
        NOT OPAQUE
    END

    LISTBUTTON 109, "", 161, 231, 623, 90
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbLegalForm"
    END

    LISTBUTTON 110, "", 161, 259, 623, 90
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbBusinessLine"
    END

    STATICTEXT 111, "legal form:", 21, 231, 133, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "stLegalForm"
    END

    STATICTEXT 112, "business line:", 21, 263, 133, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "stBusinessLine"
    END
END

CHILD-WINDOW 104 0 0 798 217
BEGIN
    INVISIBLE
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "cwPage3"

    GROUPBOX 100, "vehilcle selection list criteria", 7, 7, 791, 210
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gcMakModBodEng"
        NOT OPAQUE
    END

    LISTBUTTON 101, "", 154, 35, 630, 90
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbMake"
    END

    STATICTEXT 102, "make:", 21, 39, 126, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "stMake"
    END

    STATICTEXT 103, "model:", 21, 74, 126, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "stModel"
    END

    STATICTEXT 105, "kW power to:", 280, 109, 98, 25
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "stPowerTo"
    END

    CHECKBOX 108, "kW from:", 21, 105, 126, 25
    BEGIN
        TEXTLEFT
        JUSTIFICATION 8192
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "cbPower"
        DISABLED
    END

    CHECKBOX 109, "engine type:", 21, 140, 125, 25
    BEGIN
        TEXTLEFT
        JUSTIFICATION 8192
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "cbEngine"
        DISABLED
    END

    CHECKBOX 110, "body style:", 21, 175, 126, 25
    BEGIN
        TEXTLEFT
        JUSTIFICATION 8192
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "cbBody"
        DISABLED
    END

    LISTBUTTON 111, "", 154, 70, 630, 90
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbModel"
        DISABLED
    END

    INPUTN 112, "0", 154, 105, 90, 25
    BEGIN
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "inPowerFrom"
        CLIENTEDGE
        DISABLED
    END

    INPUTN 113, "0", 385, 105, 90, 25
    BEGIN
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "inPowerTo"
        CLIENTEDGE
        DISABLED
    END

    LISTBUTTON 114, "", 154, 140, 630, 90
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbEngine"
        DISABLED
    END

    LISTBUTTON 115, "", 154, 175, 630, 90
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbBody"
        DISABLED
    END
END

CHILD-WINDOW 105 7 7 1059 721
BEGIN
    INVISIBLE
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "cwPage4"

    GROUPBOX 102, "BDK option line assignment and confirmation ", 7, 7, 1043, 658
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gcCmpOptions"
        NOT OPAQUE
    END

    GRID 104, "Grid", 14, 28, 1015, 630
    BEGIN
        ROWS 5
        COLUMNHEAD 25, 106
        COLUMNS 6
        USERSIZE
        HORIZLINES
        VERTLINES
        VSCROLLBAR
        GRIDCOLWIDTH 0, 0
        GRIDCOLTITLE 0, "CSL_SEQ_NR"
        GRIDCOLWIDTH 1, 250
        GRIDCOLTITLE 1, "Confirmation"
        GRIDCOLWIDTH 2, 310
        GRIDCOLTITLE 2, "CarIT option"
        GRIDCOLWIDTH 3, 450
        GRIDCOLTITLE 3, "assigned BDK option"
        GRIDCOLWIDTH 4, 0
        GRIDCOLTITLE 4, "SOACODE"
        GRIDCOLWIDTH 5, 0
        GRIDCOLTITLE 5, "ISCHECKED"
        NAME "grCmpOptions"
        CLIENTEDGE
        INVISIBLE
    END

    LISTBUTTON 105, "", 952, 7, 90, 448
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbCmpOptions"
        INVISIBLE
    END
END

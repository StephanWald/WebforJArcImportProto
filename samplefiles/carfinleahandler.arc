VERSION "4.0"

WINDOW 1 "Select Interface Type" 100 100 500 180
BEGIN
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    EVENTMASK 3287287500
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmInterfaceType"

    BUTTON 1, "&Start", 155, 150, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnStart"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "&Close", 240, 150, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Cancel operation"
    END

    BUTTON 3, "&Details", 325, 150, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnDetails"
        SHORTCUE "Cancel operation"
    END

    BUTTON 4, "&Help", 410, 150, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    STATICTEXT 12000, "&Interface type", 10, 17, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtInterfaceType"
    END

    LISTBUTTON 12001, "", 120, 15, 225, 222
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnInterfaceType"
        SHORTCUE "Choose the type of interface"
    END

    STATICTEXT 12011, "M&ake", 10, 66, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMake"
    END

    INPUTE 12012, "", 120, 64, 350, 19
    BEGIN
        PADCHARACTER 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Make_descr"
        CLIENTEDGE
        SHORTCUE "Enter the make description to pass on to the Financer"
    END

    STATICTEXT 12015, "Model", 10, 86, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtmodel"
    END

    INPUTE 12016, "", 120, 84, 350, 19
    BEGIN
        PADCHARACTER 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Model_descr"
        CLIENTEDGE
        SHORTCUE "Enter the model description to pass on to the Financer"
    END

    STATICTEXT 12019, "&Car type", 10, 106, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtType_descr"
    END

    INPUTE 12020, "", 120, 104, 350, 19
    BEGIN
        PADCHARACTER 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_descr"
        CLIENTEDGE
        SHORTCUE "Enter the car type description to pass on to the Financer"
    END

    GROUPBOX 12010, "Descriptions", 3, 46, 483, 89
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInfo1"
    END
END

WINDOW 2 "Car finance/lease information" 20 200 710 710
BEGIN
    DIALOGBEHAVIOR
    INVISIBLE
    KEYBOARDNAVIGATION
    NOT MINIMIZABLE
    NOT SIZABLE
    EVENTMASK 3287287500
    DEFAULTFONT "Microsoft Sans Serif" 9, Normal
    NAME "frmCarFinLeaHandler"

    BUTTON 1, "OK", 455, 680, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnOK"
        SHORTCUE "Save changes"
    END

    BUTTON 2, "Cancel", 540, 680, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnCancel"
        SHORTCUE "Cancel operation"
    END

    BUTTON 3, "&Help", 625, 680, 75, 22
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "pbnHelp"
        SHORTCUE "Open the Help system"
    END

    CHILD-WINDOW 101, 51, 5, 415
    BEGIN
        NAME "chd_frmFinance" 
    END

    CHILD-WINDOW 102, 52, 5, 415
    BEGIN
        NAME "chd_frmLease" 
    END

    GROUPBOX 11000, "", 5, 5, 700, 150
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInfo1"
    END

    STATICTEXT 11002, "Case number : ", 15, 23, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCase"
    END

    CUSTOMEDIT 11003, "", 125, 21, 125, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Case_nr"
        CLIENTEDGE
    END

    CUSTOMEDIT 11004, "", 250, 21, 440, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Car_descr"
        CLIENTEDGE
    END

    STATICTEXT 11012, "License : ", 15, 105, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtLicense"
    END

    CUSTOMEDIT 11013, "", 125, 103, 100, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "License"
        CLIENTEDGE
    END

    STATICTEXT 11014, "Chassis number :", 235, 106, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtChassisNr"
    END

    CUSTOMEDIT 11015, "", 350, 103, 150, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Chassis_nr"
        CLIENTEDGE
    END

    STATICTEXT 11016, "Mileage :", 505, 105, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMileage"
    END

    STATICTEXT 11017, "", 615, 105, 75, 19
    BEGIN
        JUSTIFICATION 32768
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "Car_act_mileage"
        CLIENTEDGE
    END

    STATICTEXT 11018, "Customer info :", 15, 125, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtCuInfo"
    END

    CUSTOMEDIT 11019, "", 125, 123, 565, 19
    BEGIN
        IGNORETABS
        ONEPARAGRAPH
        READONLY
        WORDWRAP
        FOREGROUNDCOLOR RGB(0,46,94)
        FONT "Microsoft Sans Serif" 9, Bold
        NAME "CuInfo"
        CLIENTEDGE
    END

    GROUPBOX 11020, "Available calculations", 5, 160, 700, 200
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInfo2"
    END

    GRID 11021, "Grid", 15, 180, 658, 170
    BEGIN
        ROWS 99
        MAXCOLS 7
        COLUMNHEAD 20, 11022
        COLUMNS 6
        VSCROLLBAR
        GRIDCOLWIDTH 0, 95
        GRIDCOLTITLE 0, "Type"
        GRIDCOLWIDTH 1, 245
        GRIDCOLTITLE 1, "Provider"
        GRIDCOLWIDTH 2, 100
        GRIDCOLTITLE 2, "Total amount"
        GRIDCOLWIDTH 3, 100
        GRIDCOLTITLE 3, "Monthly amount"
        GRIDCOLWIDTH 4, 75
        GRIDCOLTITLE 4, "Interest %"
        GRIDCOLWIDTH 5, 20
        GRIDCOLTITLE 5, "S"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gclCarFinLea"
        CLIENTEDGE
    END

    TOOLBUTTON 11024, "", 673, 179, 22, 22
    BEGIN
        IMAGEFILE "Butbar003.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnNew"
        SHORTCUE "Create new valuation information in CarIT"
    END

    TOOLBUTTON 11025, "", 673, 201, 22, 22
    BEGIN
        IMAGEFILE "Butbar004.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnEdit"
        SHORTCUE "Update this valuation information in CarIT"
    END

    TOOLBUTTON 11026, "", 673, 223, 22, 22
    BEGIN
        IMAGEFILE "Butbar005.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnDelete"
        SHORTCUE "Delete this valuation information from CarIT"
    END

    GROUPBOX 11030, "", 5, 360, 700, 50
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInfo3"
    END

    STATICTEXT 11031, "&Type ", 15, 380, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtType"
    END

    LISTBUTTON 11032, "", 125, 378, 225, 196
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "List Button"
    END

    TOOLBUTTON 11033, "", 350, 378, 22, 22
    BEGIN
        IMAGEFILE "Butbar018.png" 
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "tbnExtProh"
        SHORTCUE "Call external program"
    END

    CHECKBOX 11034, "&Check to set this calculation as default ", 380, 378, 293, 19
    BEGIN
        TEXTLEFT
        JUSTIFICATION 32768
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "cbxDefCalc"
    END

    STATICTEXT 11005, "M&ake", 15, 45, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtMake"
    END

    STATICTEXT 11007, "Model", 15, 65, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtmodel"
    END

    STATICTEXT 11009, "&Car type", 15, 85, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtType_descr"
    END

    INPUTE 11010, "", 125, 83, 350, 19
    BEGIN
        PADCHARACTER 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Ct_descr"
        CLIENTEDGE
        SHORTCUE "Enter the car type description to pass on to the Financer"
    END

    INPUTE 11008, "", 125, 63, 350, 19
    BEGIN
        PADCHARACTER 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Model_descr"
        CLIENTEDGE
        SHORTCUE "Enter the model description to pass on to the Financer"
    END

    INPUTE 11006, "", 125, 43, 350, 19
    BEGIN
        PADCHARACTER 32
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "Make_descr"
        CLIENTEDGE
        SHORTCUE "Enter the make description to pass on to the Financer"
    END
END

CHILD-WINDOW 101 0 0 700 254
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwFinance"

    GROUPBOX 10100, "Detailed finance information", 0, 0, 700, 254
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInfo4"
    END

    STATICTEXT 10101, "F&inancing company", 10, 42, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinComp"
    END

    STATICTEXT 10102, "&Financing type", 10, 22, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinType"
    END

    INPUTE 10103, "", 120, 80, 200, 19
    BEGIN
        PADCHARACTER 32
        MAXLENGTH 30
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_contract_id"
        CLIENTEDGE
        SHORTCUE "Enter the financing contract Id"
    END

    STATICTEXT 10104, "&Contract Id", 10, 82, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinCont"
    END

    STATICTEXT 10105, "&Duration", 10, 102, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinMonth1"
    END

    INPUTN 10106, "", 120, 100, 30, 19
    BEGIN
        MASK "##0"
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_months"
        CLIENTEDGE
        SHORTCUE "Enter the duration of the financing contract in months"
    END

    STATICTEXT 10107, "months", 155, 102, 110, 16
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinMonth2"
    END

    STATICTEXT 10108, "Financed &amount", 10, 122, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinAmnt"
    END

    INPUTN 10109, "", 120, 120, 75, 19
    BEGIN
        MASK "-#####0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_amount"
        CLIENTEDGE
        SHORTCUE "Enter the total financed amount"
    END

    STATICTEXT 10110, "&Repayment amount", 10, 142, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinMonthAmnt1"
    END

    INPUTN 10111, "", 120, 140, 75, 19
    BEGIN
        MASK "-#####0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_month_amnt"
        CLIENTEDGE
        SHORTCUE "Enter the monthly repayment amount"
    END

    STATICTEXT 10112, "per month", 200, 142, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinMonthAmnt2"
    END

    STATICTEXT 10113, "&Start date financing", 10, 202, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinStart"
    END

    INPUTE 10114, "", 120, 200, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_date_sta"
        CLIENTEDGE
        SHORTCUE "Enter the start date of the financing contract"
    END

    STATICTEXT 10115, "&End date financing", 10, 222, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinEnd"
    END

    INPUTE 10116, "", 120, 220, 75, 19
    BEGIN
        MASK  "00.00.0000"
        PADCHARACTER 0
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_date_end"
        CLIENTEDGE
        SHORTCUE "Enter the expiry date of the financing contract"
    END

    STATICTEXT 10117, "&Interest Rate", 10, 162, 110, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFinIntRate"
    END

    INPUTN 10118, "", 120, 160, 75, 19
    BEGIN
        MASK "#0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fin_int_rate"
        CLIENTEDGE
        SHORTCUE "Enter the interest rate effective for this financing"
    END

    LISTBUTTON 10119, "", 120, 20, 225, 222
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnFinType"
        SHORTCUE "Choose the financing type"
    END

    LISTBUTTON 10120, "", 120, 40, 225, 185
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnFinComp"
        SHORTCUE "Choose the financing company"
    END
END

CHILD-WINDOW 102 0 0 700 260
BEGIN
    KEYBOARDNAVIGATION
    BORDERLESS
    EVENTMASK 3287287492
    NAME "chd_wdwLease"

    GROUPBOX 10200, "Detailed financial lease information", 0, 0, 700, 260
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "gbxInfo5"
    END

    STATICTEXT 10201, "&Maximum mileage per year", 10, 22, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleMaxMilYr"
    END

    STATICTEXT 10202, "&Calc. average mileage per month", 10, 62, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleMnthMilClc"
    END

    STATICTEXT 10203, "&Actual average mileage per month", 10, 82, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleMnthMilAct"
    END

    STATICTEXT 10204, "Mileage &tolerance", 10, 42, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleMnthMilClc"
    END

    INPUTN 10205, "", 210, 20, 75, 19
    BEGIN
        MASK "######0"
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_max_mil_yr"
        CLIENTEDGE
        SHORTCUE "Enter the maximum allowed mileage per year"
    END

    INPUTN 10206, "", 210, 40, 75, 19
    BEGIN
        MASK "######0"
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_mil_tol"
        CLIENTEDGE
        SHORTCUE "Enter the tolerance of the maximum allowed mileage per year (e.g. 500 km)"
    END

    INPUTN 10207, "", 210, 60, 75, 19
    BEGIN
        MASK "######0"
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_mnth_mil_clc"
        CLIENTEDGE
        SHORTCUE "Enter the average calculated mileage per month based upon the maximum mileage per year"
    END

    INPUTN 10208, "", 210, 80, 75, 19
    BEGIN
        MASK "######0"
        HIGHLIGHT
        PASSENTER
        PASSTAB
        RESTORESTRING "0"
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_mnth_mil_act"
        CLIENTEDGE
        SHORTCUE "Enter the actual average mileage per month based upon the actual mileage of the car"
    END

    STATICTEXT 10209, "&Initial / special payment amount", 10, 102, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleSpecPay"
    END

    INPUTN 10210, "", 210, 100, 75, 19
    BEGIN
        MASK "######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_spec_pay"
        CLIENTEDGE
        SHORTCUE "Enter an Initial/special payment amount"
    END

    STATICTEXT 10211, "&Exceeding mileage surcharge", 10, 122, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleMilCharge"
    END

    STATICTEXT 10212, "&Unexceeded mileage limit credit", 10, 142, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleMilCredit"
    END

    INPUTN 10213, "", 210, 120, 75, 19
    BEGIN
        MASK "##0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_mil_charge"
        CLIENTEDGE
        SHORTCUE "Enter the surcharge for each kilometer beyond maximum mileage in €-cent"
    END

    INPUTN 10214, "", 210, 140, 75, 19
    BEGIN
        MASK "##0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_mil_credit"
        CLIENTEDGE
        SHORTCUE "Enter the credit amount for each kilometer when the maximum mileage is not reached in €-cent"
    END

    STATICTEXT 10215, "&Expected rest value of the car", 10, 162, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleExpRest"
    END

    INPUTN 10216, "", 210, 160, 75, 19
    BEGIN
        MASK "######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_exp_rest"
        CLIENTEDGE
        SHORTCUE "Enter the expected rest value excl. VAT of the vehicle at the end of the leasing contract"
    END

    CHECKBOX 10217, "&Buy back guarantee", 300, 20, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_buy_back_yn"
        SHORTCUE "Check if the dealer is bound to buy back the vehicle when the contract is ended"
    END

    STATICTEXT 10218, "&Agreed customer sales price", 300, 42, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleCustPri"
    END

    INPUTN 10219, "", 500, 40, 75, 19
    BEGIN
        MASK "######0.00"
        DECIMALREPLACE
        HIGHLIGHT
        PASSENTER
        PASSTAB
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_cust_pri"
        CLIENTEDGE
        SHORTCUE "Enter the agreed sales price of  the vehicle, when the customer wants to buy it after the contract is ended"
    END

    STATICTEXT 10220, "&Lease contract includes", 300, 62, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleIncludes"
    END

    STATICTEXT 10221, "Additional lease &info:", 10, 182, 200, 19
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "txtFleInfo"
    END

    CUSTOMEDIT 10222, "", 10, 202, 680, 38
    BEGIN
        LIMIT 500
        ONEPARAGRAPH
        WORDWRAP
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "fle_info"
        CLIENTEDGE
        SHORTCUE "Enter additional lease contract info and conditions"
    END

    LISTBUTTON 10223, "", 500, 60, 190, 182
    BEGIN
        FONT "Microsoft Sans Serif" 9, Normal
        NAME "lbnFleIncludes"
        SHORTCUE "Choose the lease including conditions"
    END
END

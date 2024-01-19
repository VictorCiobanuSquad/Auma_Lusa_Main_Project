reportextension 50006 "Purchase Order PT Ext" extends "PTSS Purchase Order (PT)"
{
    RDLCLayout = './Auma Lusa Purchase Order.rdl';
    dataset
    {
        add("Purchase Header")
        {
            column(Order_Date; Format("Order Date", 0, 9)) { }
            column(Payment_Method; rPaymentMethod.Description) { }
            column(Payment_Terms_Code; "Payment Terms Code") { }
            column(Bank; rBankAccount.Name) { }
            column(Company_homepage; CompanyInfoExt."Home Page") { }
            column(ShipToAddrExt1; ShipToAddrExt[1])
            {
            }
            column(ShipToAddrExt2; ShipToAddrExt[2])
            {
            }
            column(ShipToAddrExt3; ShipToAddrExt[3])
            {
            }
            column(ShipToAddExtr4; ShipToAddrExt[4])
            {
            }
            column(ShipToAddrExt5; ShipToAddrExt[5])
            {
            }
            column(ShipToAddrExt6; ShipToAddrExt[6])
            {
            }
            column(ShipToAddrExt7; ShipToAddrExt[7])
            {
            }
            column(ShipToAddrExt8; ShipToAddrExt[8])
            {
            }
        }
        modify("Purchase Header")
        {
            trigger OnAfterAfterGetRecord()
            begin
                case true of
                    "Purchase Header"."Sell-to Customer No." <> '':
                        ShipToOptions := ShipToOptions::"Customer Address";
                    "Purchase Header"."Location Code" <> '':
                        ShipToOptions := ShipToOptions::Location;
                    else
                        if "Purchase Header".ShipToAddressEqualsCompanyShipToAddress() then
                            ShipToOptions := ShipToOptions::"Default (Company Address)"
                        else
                            ShipToOptions := ShipToOptions::"Custom Address";
                end;



                clear(ShipToAddrExt);
                if rPaymentMethod.Get("Purchase Header"."Payment Method Code") then;
                if rBankAccount.Get("Purchase Header"."Bal. Account No.") then;
                if CompanyInfoExt.Get() then;
                if ShipToOptions = ShipToOptions::"Location" then begin
                    if Location.Get("Purchase Header"."Location Code") then begin

                        ShipToAddrExt[1] := Location.Name;
                        ShipToAddrExt[2] := Location.Name;
                        ShipToAddrExt[3] := Location."Name 2";
                        ShipToAddrExt[4] := Location.Address;
                        ShipToAddrExt[5] := Location."Address 2";
                        ShipToAddrExt[6] := Location.City;
                        ShipToAddrExt[7] := Location."Post Code";
                        ShipToAddrExt[8] := Location."Country/Region Code";
                    end;
                end;
                if ShipToOptions = ShipToOptions::"Default (Company Address)" then begin
                    ShipToAddrExt[1] := CompanyInfoExt."Ship-to Name";
                    ShipToAddrExt[2] := CompanyInfoExt."Ship-to Name 2";
                    ShipToAddrExt[3] := CompanyInfoExt."Ship-to Address";
                    ShipToAddrExt[4] := CompanyInfoExt."Ship-to Address 2";
                    ShipToAddrExt[5] := CompanyInfoExt."Ship-to City";
                    ShipToAddrExt[6] := CompanyInfoExt."Ship-to Post Code";
                    ShipToAddrExt[7] := CompanyInfoExt."Ship-to Country/Region Code";
                    ShipToAddrExt[8] := CompanyInfoExt."Ship-to County";
                end;
                if ShipToOptions = ShipToOptions::"Customer Address" then begin
                end;
            end;
        }
        add("Purchase Line")
        {
            column(Direct_Unit_Cost; "Direct Unit Cost") { }
        }
    }
    labels
    {
        SuplierLbl = 'Suplier';
        PaymentMethodLbl = 'Payment Method';
        BankLbl = 'Bank';
        OrderDateLbl = 'Order Date';
    }

    var
        rPaymentMethod: Record "Payment Method";
        rBankAccount: Record "Bank Account";
        CompanyInfoExt: Record 79;
        Location: Record Location;
        ShipToOptions: Option "Default (Company Address)",Location,"Customer Address","Custom Address";
        ShipToAddrExt: array[10] of Text[150];

}
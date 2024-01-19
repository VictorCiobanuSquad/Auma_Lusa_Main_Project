reportextension 50004 "Sales Invoice PT Ext" extends "PTSS Sales - Invoice (PT)"
{


    RDLCLayout = './Auma Lusa Sales Invoice.rdl';

    dataset
    {

        add("Sales Invoice Header")
        {
            column(Bill_to_Name; "Sales Invoice Header"."Bill-to Name") { }
            column(Bill_to_Name2; "Sales Invoice Header"."Bill-to Name 2") { }
            column(Bill_to_Address; "Sales Invoice Header"."Bill-to Address") { }
            column(Bill_to_Address2; "Sales Invoice Header"."Bill-to Address 2") { }
            column(Bill_to_City; "Sales Invoice Header"."Bill-to City") { }
            column(Bill_to_Contact; "Sales Invoice Header"."Bill-to Contact") { }
            column(Due_Date; FORMAT("Sales Invoice Header"."Due Date", 0, 9)) { }
            column(Payment_Method; rPaymentMethod.Description) { }
            column(Payment_Terms_Code; "Payment Terms Code") { }
            column(Amount_Including_VAT; "Amount Including VAT") { }
            column(Company_homepage; CompanyInfoExt."Home Page") { }
            column(Company_Bank; CompanyInfoExt."Bank Name") { }
            column(Company_IBAN; CompanyInfoExt.IBAN) { }
            column(Company_SWIFT; CompanyInfoExt."SWIFT Code") { }
            column(Company_Country; Country.Name) { }

        }

        modify("Sales Invoice Header")
        {
            trigger OnAfterAfterGetRecord()
            begin
                if rPaymentMethod.Get("Sales Invoice Header"."Payment Method Code") then;
                if CompanyInfoExt.Get() then;
                if Country.Get(CompanyInfoExt."Country/Region Code") then;
            end;
        }

    }

    labels
    {
        ClientLbl = 'Client';
        BillingAddressLbl = 'Billing Address';
        DueDateLbl = 'Due Date';
        PaymentMethodLbl = 'Payment Method';
        ShipmentMethodLbl = 'Shipment Method';
        CustomerConfirmationLbl = 'Customer Confirmation';
        BankLbl = 'Bank';
        IBANLbl = 'IBAN';
        SWIFTLbl = 'SWIFT';
        FooterLbl = 'All sales operations will be subject to the General Conditions of AUMA Lusa Unipessoal, Lda, our credit insurer and the particular conditions agreed in each case. Our General Terms and Conditions can be requested or downloaded at www.auma.com AUMA Lusa Unipessoal, Lda is responsible for processing in accordance with the GDPR and the GDPR for the purpose of maintaining a business relationship and preserved as long as there is a mutual interest. The data will not be communicated to third parties. They may exercise their rights of access, rectification, portability, exclusion, limitation and opposition through Rua D. João II, 8-B, 2730-061 Queluz de Baixo, BARCARENA (Portugal). Email: aumalusa@auma.com and complaints: https://www.cnpd.pt/index.asp';
    }

    var
        rPaymentMethod: Record "Payment Method";
        CompanyInfoExt: Record 79;
        Country: Record "Country/Region";
}

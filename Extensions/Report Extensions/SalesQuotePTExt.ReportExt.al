reportextension 50002 "Sales Quote PT Ext" extends "PTSS Sales Quote (PT)"
{
    RDLCLayout = './Auma Lusa Sales Quote.rdl';

    dataset
    {
        add("Sales Header")
        {
            column(External_Document_No_; "External Document No.") { }
            column(Posting_Description; "Posting Description") { }
            column(Payment_Method; rPaymentMethod.Description) { }
            column(Payment_Terms_Code; "Payment Terms Code") { }
            column(Shipment_Method; "Shipment Method Code") { }
            column(Company_Bank_Account; rCompanyBankAccount.Name) { }
            column(Company_homepage; CompanyInfoExt."Home Page") { }


        }
        modify("Sales Header")
        {
            trigger OnAfterAfterGetRecord()
            begin
                if rPaymentMethod.Get("Sales Header"."Payment Method Code") then;
                if rShipmentMethod.Get("Sales Header"."Shipment Method Code") then;
                if rCompanyBankAccount.Get("Sales Header"."Company Bank Account Code") then;
                if CompanyInfoExt.Get() then;
            end;
        }
    }
    labels
    {
        ProjectNoLbl = 'Project No.';
        ExternalNoLbl = 'External Document No.';
        PaymentMethodLbl = 'Payment Method';
        ShipmentMethodLbl = 'Shipment Method';
        BankLbl = 'Bank';
        FooterLbl = 'All sales operations will be subject to the General Conditions of AUMA Lusa Unipessoal, Lda, our credit insurer and the particular conditions agreed in each case. Our General Terms and Conditions can be requested or downloaded at www.auma.com AUMA Lusa Unipessoal, Lda is responsible for processing in accordance with the GDPR and the GDPR for the purpose of maintaining a business relationship and preserved as long as there is a mutual interest. The data will not be communicated to third parties. They may exercise their rights of access, rectification, portability, exclusion, limitation and opposition through Rua D. João II, 8-B, 2730-061 Queluz de Baixo, BARCARENA (Portugal). Email: aumalusa@auma.com and complaints: https://www.cnpd.pt/index.asp';

    }



    var
        rPaymentMethod: Record "Payment Method";
        rShipmentMethod: Record "Shipment Method";
        rCompanyBankAccount: Record "Bank Account";
        CompanyInfoExt: Record 79;

}
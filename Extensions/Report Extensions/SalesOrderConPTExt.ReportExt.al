reportextension 50001 "Sales Order Con PT Ext" extends "PTSS Sales Order (PT)"
{
    RDLCLayout = './Auma Lusa Order Confirmation.rdl';

    dataset
    {
        add("Sales Header")
        {
            column(Order_Date; Format("Promised Delivery Date", 0, 9)) { }
            column(Payment_Method; rPaymentMethod.Description) { }
            column(Payment_Terms_Code; "Payment Terms Code") { }
            column(Shipping_Agent; rShippingAgent.Name) { }
            column(Company_homepage; CompanyInfoExt."Home Page") { }



        }
        modify("Sales Header")
        {
            trigger OnAfterAfterGetRecord()
            begin
                if rPaymentMethod.Get("Sales Header"."Payment Method Code") then;
                if rShippingAgent.Get("Sales Header"."Shipping Agent Code") then;
                if CompanyInfoExt.Get() then;
            end;
        }



    }

    labels
    {
        ClientLbl = 'Client';
        ShippingAddressLbl = 'Shipping Address';
        FooterLbl = 'All sales operations will be subject to the General Conditions of AUMA Lusa Unipessoal, Lda, our credit insurer and the particular conditions agreed in each case. Our General Terms and Conditions can be requested or downloaded at www.auma.com AUMA Lusa Unipessoal, Lda is responsible for processing in accordance with the GDPR and the GDPR for the purpose of maintaining a business relationship and preserved as long as there is a mutual interest. The data will not be communicated to third parties. They may exercise their rights of access, rectification, portability, exclusion, limitation and opposition through Rua D. João II, 8-B, 2730-061 Queluz de Baixo, BARCARENA (Portugal). Email: aumalusa@auma.com and complaints: https://www.cnpd.pt/index.asp';
        ShippingAgentLbl = 'Shipping Agent';
        PaymentMethodLbl = 'Payment Method';
        ConfirmLbl = 'Client Confirmation';
        OrderDateLbl = 'Promised Delivery Date';
    }
    var
        rPaymentMethod: Record "Payment Method";
        rShippingAgent: Record "Shipping Agent";
        CompanyInfoExt: Record 79;


}
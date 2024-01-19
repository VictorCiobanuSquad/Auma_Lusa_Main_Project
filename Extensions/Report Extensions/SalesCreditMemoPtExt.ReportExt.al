reportextension 50005 "Sales Credit Memo Pt Ext" extends "PTSS Sales - Credit Memo (PT)"
{
    RDLCLayout = './Auma Lusa Sales Credit Memo.rdl';

    dataset
    {
        add("Sales Cr.Memo Header")
        {
            column(PaymentMethodTxt; PaymentMethodTxt) { }
            column(Payment_Method; rPaymentMethod.Description) { }
            column(Payment_Terms_Code; "Payment Terms Code") { }
            column(Due_Date; Format("Due Date", 0, 9)) { }
            column(Company_Bank_Account; rCompanyBankAccount.Name) { }
            column(Amount_Including_VAT; "Amount Including VAT") { }
            column(Company_homepage; CompanyInfoExt."Home Page") { }


        }
        modify("Sales Cr.Memo Header")
        {
            trigger OnAfterAfterGetRecord()
            begin
                if rPaymentMethod.Get("Sales Cr.Memo Header"."Payment Method Code") then;
                if rCompanyBankAccount.Get("Sales Cr.Memo Header"."Company Bank Account Code") then;
                if CompanyInfoExt.Get() then;
            end;
        }
    }

    labels
    {
        ClientLbl = 'Client';
        BankLbl = 'Bank';
        FooterLbl = 'All sales operations will be subject to the General Conditions of AUMA Lusa Unipessoal, Lda, our credit insurer and the particular conditions agreed in each case. Our General Terms and Conditions can be requested or downloaded at www.auma.com AUMA Lusa Unipessoal, Lda is responsible for processing in accordance with the GDPR and the GDPR for the purpose of maintaining a business relationship and preserved as long as there is a mutual interest. The data will not be communicated to third parties. They may exercise their rights of access, rectification, portability, exclusion, limitation and opposition through Rua D. João II, 8-B, 2730-061 Queluz de Baixo, BARCARENA (Portugal). Email: aumalusa@auma.com and complaints: https://www.cnpd.pt/index.asp';
    }
    var
        PaymentMethodTxt: Label 'Payment Method';
        rPaymentMethod: Record "Payment Method";
        rCompanyBankAccount: Record "Bank Account";
        CompanyInfoExt: Record 79;

}
report 50001 "PTSS Purchase Receipt (PT)" //230333092,n
{
    //copy purchase order pt
    DefaultLayout = RDLC;
    RDLCLayout = './Auma Lusa Purchase Receipt.rdl';
    Caption = 'Purchase Receipt Confirmation (PT)';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Purchase Header"; "Purchase Header")
        {
            DataItemTableView = SORTING("Document Type", "No.")
                                WHERE("Document Type" = CONST(Order));
            RequestFilterFields = "No.", "Buy-from Vendor No.", "No. Printed";
            RequestFilterHeading = 'Purchase Order';
            column(PurchInvHdrNo; "No.")
            {
            }
            column(CompanyAddr1; CompanyAddr[1])
            {
            }
            column(CompanyAddr2; CompanyAddr[2])
            {
            }
            column(CompanyAddr3; CompanyAddr[3])
            {
            }
            column(CompanyAddr4; CompanyAddr[4])
            {
            }
            column(CompanyAddr5; CompanyAddr[5])
            {
            }
            column(CompanyAddr6; CompanyAddr[6])
            {
            }
            column(EMail; CompanyInfo."E-Mail")
            {
            }
            column(Company_homepage; Companyinfo."Home Page")//guangai
            {
            }
            column(CompanyInfoPhoneNo; CompanyInfo."Phone No.")
            {
            }
            column(CompanyInfoVATRegNo; CompanyInfo."VAT Registration No.")
            {
            }
            column(ShareCapital; CompanyInfo."PTSS Share Capital")
            {
            }
            column(RegistrationAuthority; CompanyInfo."PTSS Registration Authority")
            {
            }
            column(ShareCapitalCaption; CompanyInfo.FIELDCAPTION("PTSS Share Capital"))
            {
            }
            column(Picture; CompanyInfo.Picture)
            {
            }
            column(TextOrig2Via; TextOrig2Via)
            {
            }
            column(SAFTDocumentNo; "No.")
            {
            }
            column(Signature; Signature)
            {
            }
            column(Text31022902; Text31022902)
            {
            }
            column(PurchInvHdrShipmentStartDate; FORMAT("Purchase Header"."PTSS Shipment Start Date", 0, 9))
            {
            }
            column(PurchInvHdrShipmentStartTime; FORMAT("Purchase Header"."PTSS Shipment Start Time"))
            {
            }
            column(InvNoText; InvNoText)
            {
            }
            column(TotallyPaid; TotallyPaid)
            {
            }
            column(ShipFromAddr1; ShipFromAddr[1])
            {
            }
            column(ShipFromAddr2; ShipFromAddr[2])
            {
            }
            column(ShipFromAddr3; ShipFromAddr[3])
            {
            }
            column(ShipFromAddr4; ShipFromAddr[4])
            {
            }
            column(ShipFromAddr5; ShipFromAddr[5])
            {
            }
            column(ShipFromAddr6; ShipFromAddr[6])
            {
            }
            column(ShipFromAddr7; ShipFromAddr[7])
            {
            }
            column(ShipFromAddr8; ShipFromAddr[8])
            {
            }
            column(SelltoVendNoPurchInvHdr; "Purchase Header"."Buy-from Vendor No.")
            {
            }
            column(Order_Date; Format("Order Date", 0, 9))//guangai
            {
            }
            //230841572,so
            //column(ShipToAddr1; ShipToAddr[1])
            //{
            //}
            //column(ShipToAddr2; ShipToAddr[2])
            //{
            //}
            //column(ShipToAddr3; ShipToAddr[3])
            //{
            //}
            //column(ShipToAddr4; ShipToAddr[4])
            //{
            //}
            //column(ShipToAddr5; ShipToAddr[5])
            //{
            //}
            //column(ShipToAddr6; ShipToAddr[6])
            //{
            //}
            //column(ShipToAddr7; ShipToAddr[7])
            //{
            //}
            //column(ShipToAddr8; ShipToAddr[8])
            //{
            //}
            //230841572,eo
            column(SelltoVendNoPurchInvHdrCaption; "Purchase Header".FIELDCAPTION("Buy-from Vendor No."))
            {
            }
            column(VisibleFeeMessage; VisibleFeeMessage)
            {
            }
            column(PostingDate; PostingDate)
            {
            }
            column(CompanyInfoPhone; CompanyInfoPhone)
            {
            }
            column(CompanyEmail; CompanyEmail)
            {
            }
            column(VATRegNo; VATRegNo)
            {
            }
            column(ShipmentDate; ShipmentDate)
            {
            }
            column(ShipmentTime; ShipmentTime)
            {
            }
            column(PurchInvDueDate; PurchInvDueDate)
            {
            }
            column(PaymentTermsDescription; PaymentTermsDescription)
            {
            }
            column(ShptMethodDesc; ShptMethodDesc)
            {
            }
            column(TransHeader; TransHeader)
            {
            }
            column(TransFooter; TransFooter)
            {
            }
            // column(ProductsMadeAvail; ProductsMadeAvail)
            // {
            // }
            column(RegistrationAT; RegistrationAT)
            {
            }
            column(No; No)
            {
            }
            column(Description; Description)
            {
            }
            column(UOM; UOM)
            {
            }
            column(Qty; Qty)
            {
            }
            column(UnitCost; UnitCost)
            {
            }
            column(WithholdingTaxCap; WithholdingTaxCap)
            {
            }
            column(PurchInvLineDisc; PurchInvLineDisc)
            {
            }
            column(VATPercentage; VATPercentage)
            {
            }
            column(AmountCap; AmountCap)
            {
            }
            column(LineDim; LineDim)
            {
            }
            column(LotNo; LotNo)
            {
            }
            column(SerialNo; SerialNo)
            {
            }
            column(Subtotal; Subtotal)
            {
            }
            column(InvDiscountAmt; InvDiscountAmt)
            {
            }
            column(LineAmtAfterInvDisc; LineAmtAfterInvDisc)
            {
            }
            column(VATPercentageCap; VATPercentage)
            {
            }
            column(VATBase; VATBase)
            {
            }
            column(VATAmt; VATAmt)
            {
            }
            column(ExemptionReasonText; ExemptionReasonText)
            {
            }
            column(VATClauses; VATClauses)
            {
            }
            column(LoadLoc; LoadLoc)
            {
            }
            column(UnloadLoc; UnloadLoc)
            {
            }
            column(PageCap; PageCap)
            {
            }

            column(Text31022911; Text31022911)
            {
            }
            column(Text31022912; Text31022912)
            {
            }
            column(IsReportInPreviewMode; IsReportInPreviewMode())
            {
            }
            column(PTSSWithholdingInvoice; "PTSS Withholding Invoice")
            {
            }
            column(TotalAmountInAddCurr; TotalAmountInAddCurr)
            {
            }
            column(TotalAmountInLC; TotalAmountInLC) { }
            column(RetCodLbl; RetCodLbl) { }
            column(RetAmountLbl; RetAmountLbl) { }
            column(RetIncLbl; RetIncLbl) { }
            column(RetPercLbl; RetPercLbl) { }
            column(PTSSWithholdingCode1; PTSSWithholdingCode1) { }
            column(PTSSWithholdingCode2; PTSSWithholdingCode2) { }
            column(PTSSWithholdingPerc1; PTSSWithholdingPerc1) { }
            column(PTSSWithholdingPerc2; PTSSWithholdingPerc2) { }
            column(PTSSWithLineAmt1; PTSSWithLineAmt1) { }
            column(PTSSWithLineAmt2; PTSSWithLineAmt2) { }
            column(PTSSWithLineInci; PTSSWithLineInci) { }
            column(PTSSHasWithholdingCode1; PTSSHasWithholdingCode1) { }
            column(PTSSHasWithholdingCode2; PTSSHasWithholdingCode2) { }
            column(PTSSTotalWithholdingLbl; PTSSTotalWithholdingLbl) { }
            column(PTSSWithholdingSpecificationLbl; PTSSWithholdingSpecificationLbl) { }
            column(PTSSTotalWihholdingAmt; PTSSTotalWihholdingAmt)
            {
                AutoFormatExpression = "Purchase Header"."Currency Code";
                AutoFormatType = 1;
            }
            column(PTSSVATSpecificationLbl; PTSSVATSpecificationLbl) { }
            column(PTSSRetentionLbl; PTSSRetentionLbl) { } //NEW
            column(PTSSYesLbl; YesLbl) { } //NEW
            column(PTSSTotalToPay; PTSSTotalToPay) { }
            column(PTSSRetAmtLbl; PTSSRetAmtLbl) { }
            column(PTSSTotalAmtToPay; PTSSTotalAmtToPay) { }
            column(VendorOrderNoLbl; VendorOrderNoLbl)
            {
            }
            column(Vendor_Order_No_; "Vendor Order No.")
            {
            }
            dataitem(CopyLoop; Integer)
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop; Integer)
                {
                    DataItemTableView = SORTING(Number)
                                        WHERE(Number = CONST(1));
                    column(OutputNo; OutputNo)
                    {
                    }
                    column(VendAddr1; VendAddr[1])
                    {
                    }
                    column(VendAddr2; VendAddr[2])
                    {
                    }
                    column(VendAddr3; VendAddr[3])
                    {
                    }
                    column(VendAddr4; VendAddr[4])
                    {
                    }
                    column(VendAddr5; VendAddr[5])
                    {
                    }
                    column(VendAddr6; VendAddr[6])
                    {
                    }
                    column(VendAddr7; VendAddr[7])
                    {
                    }
                    column(VendAddr8; VendAddr[8])
                    {
                    }
                    column(BilltoVendNoPurchInvHdr; "Purchase Header"."Pay-to Vendor No.")
                    {
                    }
                    column(PostingDatePurchInvHdr; FORMAT("Purchase Header"."Posting Date", 0, 9))
                    {
                    }
                    column(VATNoText; VATNoText)
                    {
                    }
                    column(VATRegNoPurchInvHdr; "Purchase Header"."VAT Registration No.")
                    {
                    }
                    column(DueDatePurchInvHdr; FORMAT("Purchase Header"."Due Date", 0, 9))
                    {
                    }
                    column(DocDatePurchInvHdr; WorkingDocDate)
                    {
                    }
                    column(PricesInclVATPurchInvHdr; "Purchase Header"."Prices Including VAT")
                    {
                    }
                    column(PricesInclVATYesNoPurchInvHdr; FORMAT("Purchase Header"."Prices Including VAT"))
                    {
                    }
                    column(PaymentTermsDesc; PaymentTerms.Description)
                    {
                    }
                    column(ShipmentMethodDesc; ShipmentMethod.Description)
                    {
                    }
                    column(BilltoVendNoPurchInvHdrCaption; "Purchase Header".FIELDCAPTION("Pay-to Vendor No."))
                    {
                    }
                    column(PricesInclVATPurchInvHdrCaption; "Purchase Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(Text31022908; Text31022908)
                    {
                    }
                    column(WithHoldingTaxCodeCaption; WithHoldingTaxCodeCaption)
                    {
                    }
                    column(WithHoldingTaxPercCaption; WithHoldingTaxPercCaption)
                    {
                    }
                    column(WithHoldingDescCaption; WithHoldingDescCaption)
                    {
                    }
                    column(WithHoldingTaxAmountCaption; WithHoldingTaxAmountCaption)
                    {
                    }
                    //230841572,sn
                    dataitem(Total3; Integer)
                    {
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = CONST(1));
                        column(SellToCustNo_PurchHeader; "Purchase Header"."Sell-to Customer No.")
                        {
                        }
                        column(ShipToAddr1; ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2; ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3; ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4; ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5; ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6; ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7; ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8; ShipToAddr[8])
                        {
                        }
                        column(ShiptoAddressCaption; ShiptoAddressCaptionLbl)
                        {
                        }
                        column(SellToCustNo_PurchHeaderCaption; "Purchase Header".FIELDCAPTION("Sell-to Customer No."))
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            IF ("Purchase Header"."Sell-to Customer No." = '') AND (ShipToAddr[1] = '') THEN
                                CurrReport.BREAK();
                        end;
                    }


                    //230841572,en
                    dataitem(DimensionLoop1; Integer)
                    {
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING(Number)
                                            WHERE(Number = FILTER(1 ..));
                        column(DimText; DimText)
                        {
                        }
                        column(DimensionLoop1Number; Number)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            IF Number = 1 THEN BEGIN
                                IF NOT DimSetEntry1.FINDSET() THEN
                                    CurrReport.BREAK();
                            END ELSE
                                IF NOT Continue THEN
                                    CurrReport.BREAK();

                            CLEAR(DimText);
                            Continue := FALSE;
                            REPEAT
                                OldDimText := DimText;
                                IF DimText = '' THEN
                                    DimText := STRSUBSTNO('%1 %2', DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code")
                                ELSE
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3', DimText,
                                        DimSetEntry1."Dimension Code", DimSetEntry1."Dimension Value Code");
                                IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                    DimText := OldDimText;
                                    Continue := TRUE;
                                    EXIT;
                                END;
                            UNTIL DimSetEntry1.NEXT() = 0;

                        end;

                        trigger OnPreDataItem()
                        begin
                            IF NOT ShowInternalInfo THEN
                                CurrReport.BREAK();
                        end;
                    }
                    dataitem("Purchase Line"; "Purchase Line")
                    {
                        DataItemLink = "Document Type" = FIELD("Document Type"),
                                       "Document No." = FIELD("No.");
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING("Document Type", "Document No.", "Line No.");
                        PrintOnlyIfDetail = false;
                        column(LineAmtPurchInvLine; "Line Amount" - ControlTrackingTransport)
                        {
                            AutoFormatExpression = "Currency Code";
                            AutoFormatType = 1;
                        }
                        column(DescPurchInvLine; Description)
                        {
                        }
                        column(PurchInvLineNo; "No.")
                        {
                        }
                        column(PurchInvLineNo2; PurchInvLineNo2)
                        {
                        }
                        column(QtyPurchInvLine; Quantity)
                        {
                        }
                        column(UOMPurchInvLine; "Unit of Measure Code")
                        {
                        }
                        column(UnitCostPurchInvLine; "Unit Cost")
                        {
                            AutoFormatExpression = "Currency Code";
                            AutoFormatType = 2;
                        }
                        column(DiscountPurchInvLine; "Line Discount %")
                        {
                        }
                        column(VATIdentifierPurchInvLine; "VAT Identifier")
                        {
                        }
                        column(TypePurchInvLine; FORMAT(Type))
                        {
                        }
                        column(InvDiscLineAmtPurchInvLine; -"Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalSubTotal; TotalSubTotal)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalInvDiscAmount; TotalInvDiscAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalText; TotalText)
                        {
                        }
                        column(AmountPurchInvLine; Amount)
                        {
                            AutoFormatExpression = "Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmount; TotalAmount)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(AmountAmtInclVAT; "Amount Including VAT" - Amount)
                        {
                            AutoFormatExpression = "Currency Code";
                            AutoFormatType = 1;
                        }
                        column(AmtInclVATPurchInvLine; "Amount Including VAT")
                        {
                            AutoFormatExpression = "Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmtText; VATAmountLine.VATAmountText())
                        {
                        }
                        column(TotalExclVATText; TotalExclVATText)
                        {
                        }
                        column(TotalInclVATText; TotalInclVATText)
                        {
                        }
                        column(TotalAmountInclVAT; TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmountVAT; TotalAmountVAT)
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(LineAmtAfterInvDiscAmt; -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT"))
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseDiscPurchInvHdr; "Purchase Header"."VAT Base Discount %")
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalPaymentDiscOnVAT; TotalPaymentDiscOnVAT)
                        {
                            AutoFormatType = 1;
                        }
                        column(TotalInclVATTextPurchInvLine; TotalInclVATText)
                        {
                        }
                        column(VATAmtTextPurchInvLine; VATAmountLine.VATAmountText())
                        {
                        }
                        column(DocNoPurchInvLine; "Document No.")
                        {
                        }
                        column(LineNoPurchInvLine; "Line No.")
                        {
                        }
                        column(VATAmtLineVATPer2; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(TotalAmountStampDutyPurchInvLine; TotalAmountStampDuty)
                        {
                        }
                        // column(StampDutyCodeSalesInvLine; "Purchase Line"."PTSS Stamp Duty Code")
                        // {
                        // }
                        column(Text31022907; Text31022907)
                        {
                        }
                        column(TotalAmountStampDuty; TotalAmountStampDuty)
                        {
                        }
                        column(TotalAmountInEUR; TotalAmountInEUR)
                        {
                        }
                        column(WithHoldingTaxCode; "Purchase Line"."PTSS Withholding Tax Code 1")
                        {
                        }
                        column(WithHoldingTaxPerc; "Purchase Line"."PTSS Withholding Tax")
                        {
                        }
                        column(WithHoldingDescription; WithHoldingDescription)
                        {
                        }
                        column(PTSSWithholdingTaxAmount; (-"Purchase Header"."PTSS Withholding Tax Amount"))
                        {
                        }
                        column(LWithholdingTax; "Purchase Header".FIELDCAPTION("PTSS Withholding Tax Amount"))
                        {
                        }
                        column(IsWithholdingLine; "Purchase Line"."PTSS Withholding Line") { }
                        column(UsedOnWithholdingTaxCalc; "Purchase Line"."PTSS Withholding Tax") { } //NEW
                        column(ItemRefNo; ItemRefNo) { } //230537837,n
                        dataitem(DimensionLoop2; Integer)
                        {
                            DataItemTableView = SORTING(Number)
                                                WHERE(Number = FILTER(1 ..));
                            PrintOnlyIfDetail = true;
                            column(DimTextDimLoop; DimText)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN BEGIN
                                    IF NOT DimSetEntry2.FINDSET() THEN
                                        CurrReport.BREAK();
                                END ELSE
                                    IF NOT Continue THEN
                                        CurrReport.BREAK();

                                CLEAR(DimText);
                                Continue := FALSE;
                                REPEAT
                                    OldDimText := DimText;
                                    IF DimText = '' THEN
                                        DimText := STRSUBSTNO('%1 %2', DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code")
                                    ELSE
                                        DimText :=
                                          STRSUBSTNO(
                                            '%1, %2 %3', DimText,
                                            DimSetEntry2."Dimension Code", DimSetEntry2."Dimension Value Code");
                                    IF STRLEN(DimText) > MAXSTRLEN(OldDimText) THEN BEGIN
                                        DimText := OldDimText;
                                        Continue := TRUE;
                                        EXIT;
                                    END;
                                UNTIL DimSetEntry2.NEXT() = 0;
                            end;

                            trigger OnPreDataItem()
                            begin
                                IF NOT ShowInternalInfo THEN
                                    CurrReport.BREAK();

                                DimSetEntry2.SETRANGE("Dimension Set ID", "Purchase Line"."Dimension Set ID");
                            end;
                        }
                        dataitem(AsmLoop; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            PrintOnlyIfDetail = true;
                            column(TempPostedAsmLineNo; BlanksForIndent() + TempPostedAsmLine."No.")
                            {
                            }
                            column(TempPostedAsmLineQuantity; TempPostedAsmLine.Quantity)
                            {
                                DecimalPlaces = 0 : 5;
                            }
                            column(TempPostedAsmLineDesc; BlanksForIndent() + TempPostedAsmLine.Description)
                            {
                            }
                            column(TempPostAsmLineVartCode; BlanksForIndent() + TempPostedAsmLine."Variant Code")
                            {
                                // DecimalPlaces = 0 : 5;
                            }
                            column(TempPostedAsmLineUOM; GetUOMText(TempPostedAsmLine."Unit of Measure Code"))
                            {
                                // DecimalPlaces = 0 : 5;
                            }

                            trigger OnAfterGetRecord()
                            var
                                ItemTranslation: Record "Item Translation";
                            begin
                                IF Number = 1 THEN
                                    TempPostedAsmLine.FINDSET()
                                ELSE
                                    TempPostedAsmLine.NEXT();

                                IF ItemTranslation.GET(TempPostedAsmLine."No.",
                                     TempPostedAsmLine."Variant Code",
                                     "Purchase Header"."Language Code")
                                THEN
                                    TempPostedAsmLine.Description := ItemTranslation.Description;
                            end;

                            trigger OnPreDataItem()
                            begin
                                CLEAR(TempPostedAsmLine);
                                IF NOT DisplayAssemblyInformation THEN
                                    CurrReport.BREAK();
                                CollectAsmInformation();
                                CLEAR(TempPostedAsmLine);
                                SETRANGE(Number, 1, TempPostedAsmLine.COUNT);
                            end;
                        }
                        dataitem(ItemTrackingLine; Integer)
                        {
                            DataItemTableView = SORTING(Number);
                            PrintOnlyIfDetail = true;
                            column(TrackingSpecBufferNo; TrackingSpecBuffer."Item No.")
                            {
                            }
                            column(TrackingSpecBufferDesc; TrackingSpecBuffer.Description)
                            {
                            }
                            column(TrackingSpecBufferLotNo; TrackingSpecBuffer."Lot No.")
                            {
                            }
                            column(TrackingSpecBufferSerNo; TrackingSpecBuffer."Serial No.")
                            {
                                IncludeCaption = true;
                            }
                            column(TrackingSpecBufferQty; TrackingSpecBuffer."Quantity (Base)")
                            {
                            }
                            column(ShowTotal; ShowTotal)
                            {
                            }
                            column(ShowGroup; ShowGroup)
                            {
                            }
                            dataitem(TotalItemTracking; Integer)
                            {
                                DataItemTableView = SORTING(Number)
                                                    WHERE(Number = CONST(1));
                                column(TotalQty; TotalQty)
                                {
                                }
                            }

                            trigger OnAfterGetRecord()
                            begin
                                IF Number = 1 THEN
                                    TrackingSpecBuffer.FINDSET()
                                ELSE
                                    TrackingSpecBuffer.NEXT();

                                IF NOT ShowCorrectionLines AND TrackingSpecBuffer.Correction THEN
                                    CurrReport.SKIP();
                                IF TrackingSpecBuffer.Correction THEN
                                    TrackingSpecBuffer."Quantity (Base)" := -TrackingSpecBuffer."Quantity (Base)";

                                ShowTotal := FALSE;
                                IF ItemTrackingAppendix.IsStartNewGroup(TrackingSpecBuffer) THEN
                                    ShowTotal := TRUE;

                                ShowGroup := FALSE;
                                IF (TrackingSpecBuffer."Source Ref. No." <> OldRefNo) OR
                                   (TrackingSpecBuffer."Item No." <> OldNo)
                                THEN BEGIN
                                    OldRefNo := TrackingSpecBuffer."Source Ref. No.";
                                    OldNo := TrackingSpecBuffer."Item No.";
                                    TotalQty := 0;
                                END ELSE
                                    ShowGroup := TRUE;
                                TotalQty += TrackingSpecBuffer."Quantity (Base)";
                            end;

                            trigger OnPreDataItem()
                            begin
                                ControlTrackingTransport := "Purchase Line".Amount;
                                IF TrackingSpecCount = 0 THEN
                                    CurrReport.BREAK();
                                TrackingSpecBuffer.SETRANGE("Item No.", "Purchase Line"."No.");
                                TrackingSpecBuffer.SETRANGE("Source Ref. No.", "Purchase Line"."Line No.");
                                TrackingSpecCountLines := TrackingSpecBuffer.COUNT;
                                SETRANGE(Number, 1, TrackingSpecCountLines);

                                TrackingSpecBuffer.SETCURRENTKEY("Source ID", "Source Type", "Source Subtype", "Source Batch Name",
                                "Source Prod. Order Line", "Source Ref. No.");
                            end;
                        }

                        trigger OnAfterGetRecord()
                        var
                            WithholdingTaxDesc: Record "PTSS Withholding Tax Codes";
                        begin
                            IF (Type = Type::"G/L Account") AND (NOT ShowInternalInfo) THEN
                                "No." := '';

                            //230537837,sn
                            ItemRefNo := '';
                            if PrintCrossReference then //230739523,n
                                if "Purchase Line"."Item Reference No." <> '' then
                                    ItemRefNo := StrSubstNo(VendorItemNoLbl, "Purchase Line"."Item Reference No.");
                            //230537837,en

                            if "Purchase Line"."Item Reference No." <> '' then
                                PurchInvLineNo2 := "Purchase Line"."Item Reference No."
                            else
                                PurchInvLineNo2 := "Purchase Line"."No.";

                            if NOT ("Purchase Line"."PTSS Withholding Line") then begin
                                VATAmountLine.INIT();
                                VATAmountLine."VAT Identifier" := "VAT Identifier";
                                VATAmountLine."VAT Calculation Type" := "VAT Calculation Type";
                                VATAmountLine."Tax Group Code" := "Tax Group Code";
                                IF "VAT Calculation Type" <> VATAmountLine."VAT Calculation Type"::"PTSS Stamp Duty" THEN
                                    VATAmountLine."VAT %" := "VAT %" + "PTSS ND %"
                                ELSE
                                    VATAmountLine."VAT %" := 0;
                                VATAmountLine."VAT Base" := Amount;
                                VATAmountLine."Amount Including VAT" := "Amount Including VAT";
                                VATAmountLine."Line Amount" := "Line Amount";
                                IF "Allow Invoice Disc." THEN
                                    VATAmountLine."Inv. Disc. Base Amount" := "Line Amount";
                                VATAmountLine."Invoice Discount Amount" := "Inv. Discount Amount";
                                //VATAmountLine."VAT Clause Code" := "VAT Clause Code";
                                VATAmountLine.InsertLine();
                            end;

                            if "Purchase Line"."PTSS Withholding Line" then begin
                                clear(VATAmountLine);
                                VATAmountLine."VAT %" := 0;
                                VATAmountLine."VAT Base" := Amount;
                                VATAmountLine.InsertLine();
                                "Purchase Line"."Unit Cost" := "Unit Cost" * -1;
                                "Purchase Line"."Line Amount" := 0;
                                "Purchase Line".Amount := 0;
                                "Purchase Line"."Amount Including VAT" := 0;
                            end;

                            IF WithholdingTaxDesc.GET("Purchase Line"."PTSS Withholding Tax Code 1") THEN
                                WithHoldingDescription := WithholdingTaxDesc.Description;

                            TotalSubTotal += "Line Amount";
                            TotalInvDiscAmount -= "Inv. Discount Amount";
                            TotalAmount += Amount;
                            TotalAmountInAddCurr += Amount; //XXX
                            PTSSTotalAmtToPay += Amount;
                            //IF "Purchase Line"."PTSS Stamp Duty Code" = '' THEN
                            TotalAmountVAT += "Amount Including VAT" - Amount;
                            TotalAmountInclVAT += "Amount Including VAT";
                            TotalPaymentDiscOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");
                            ControlTrackingTransport := 0;
                        end;



                        trigger OnPreDataItem()
                        begin
                            VATAmountLine.DELETEALL();
                            FirstValueEntryNo := 0;
                            MoreLines := FINDLAST();
                            WHILE MoreLines AND (Description = '') AND ("No." = '') AND (Quantity = 0) AND (Amount = 0) DO
                                MoreLines := NEXT(-1) <> 0;
                            IF NOT MoreLines THEN
                                CurrReport.BREAK();
                            SETRANGE("Line No.", 0, "Line No.");
                            CurrReport.CREATETOTALS("Line Amount", Amount, "Amount Including VAT", "Inv. Discount Amount");
                        end;
                    }
                    dataitem(VATCounter; Integer)
                    {
                        DataItemLinkReference = PageLoop;
                        DataItemTableView = SORTING(Number);
                        column(VATAmtLineVATBase; VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Purchase Line"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmt; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmt; VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt; VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscAmt; VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATPer; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATAmtLineVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATClauseCode2; VATAmountLine."VAT Clause Code")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(
                              VATAmountLine."Line Amount", VATAmountLine."Inv. Disc. Base Amount",
                              VATAmountLine."Invoice Discount Amount", VATAmountLine."VAT Base", VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VATClauseEntryCounter; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATClauseDescription; VATClause.Description)
                        {
                        }
                        column(VATClauseDescription2; VATClause."Description 2")
                        {
                        }
                        column(VATClauseVATIdentifier; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATClauseCode; VATAmountLine."VAT Clause Code")
                        {
                        }
                        column(VATClauseAmount; VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Purchase Header"."Currency Code";
                            AutoFormatType = 1;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                            IF NOT VATClause.GET(VATAmountLine."VAT Clause Code") THEN
                                CurrReport.SKIP();
                            IF PrintDocumentSystemLanguage = FALSE THEN BEGIN
                                VATClause.TranslateDescription("Purchase Header"."Language Code");
                            END ELSE BEGIN
                                VATClause.TranslateDescription(FORMAT(GlobalLanguage));
                            END;
                        end;

                        trigger OnPreDataItem()
                        begin
                            CLEAR(VATClause);
                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VatCounterLCY; Integer)
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALSpecLCYHeader; VALSpecLCYHeader)
                        {
                        }
                        column(VALExchRate; VALExchRate)
                        {
                        }
                        column(VALVATBaseLCY; VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATAmountLCY; VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATPerVATCounterLCY; VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0 : 5;
                        }
                        column(VATIdentifierVATCounterLCY; VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATClauseCode3; VATAmountLine."VAT Clause Code")
                        {
                        }
                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                            VALVATBaseLCY :=
                              VATAmountLine.GetBaseLCY(
                                "Purchase Header"."Posting Date", "Purchase Header"."Currency Code",
                                "Purchase Header"."Currency Factor");
                            VALVATAmountLCY :=
                              VATAmountLine.GetAmountLCY(
                                "Purchase Header"."Posting Date", "Purchase Header"."Currency Code",
                                "Purchase Header"."Currency Factor");
                        end;

                        trigger OnPreDataItem()
                        begin
                            IF (NOT GLSetup."Print VAT specification in LCY") OR
                               ("Purchase Header"."Currency Code" = '')
                            THEN
                                CurrReport.BREAK();

                            SETRANGE(Number, 1, VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VALVATBaseLCY, VALVATAmountLCY);

                            IF GLSetup."LCY Code" = '' THEN
                                VALSpecLCYHeader := Text31022897 + Text31022898
                            ELSE
                                VALSpecLCYHeader := Text31022897 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Purchase Header"."Posting Date", "Purchase Header"."Currency Code", 1);
                            CalculatedExchRate := ROUND(1 / "Purchase Header"."Currency Factor" * CurrExchRate."Exchange Rate Amount", 0.000001);
                            VALExchRate := STRSUBSTNO(Text31022899, CalculatedExchRate, CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    IF Number > 1 THEN BEGIN
                        CopyText := Text31022895;
                        OutputNo += 1;
                    END;

                    CASE Number OF
                        1:
                            TextOrig2Via := TxtOriginal;
                        2:
                            TextOrig2Via := Text31022903;
                        3:
                            TextOrig2Via := Text31022904;
                        ELSE
                            TextOrig2Via := Text31022895;
                    END;
                    //230537837,so
                    // IF "Purchase Header"."No. Printed" > 1 THEN
                    //     TextOrig2Via := Txt2Via + ' ' + TextOrig2Via;
                    //230537837,eo

                    //230537837,sn
                    IF ("Purchase Header"."No. Printed" > 1) THEN
                        TextOrig2Via := Txt2Via2 + ' ' + TextOrig2Via;

                    IF (CurrReport.Language = 1033) AND (Number > 3) then
                        IF ("Purchase Header"."No. Printed" < 2) then
                            TextOrig2Via := Text31022895
                        ELSE
                            TextOrig2Via := Txt2Via2;
                    //230537837,en

                    CurrReport.PAGENO := 1;

                    TotalSubTotal := 0;
                    TotalInvDiscAmount := 0;
                    TotalAmount := 0;
                    TotalAmountVAT := 0;
                    TotalAmountInclVAT := 0;
                    TotalPaymentDiscOnVAT := 0;
                    TotalAmountInEUR := 0;
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    IF NoOfLoops <= 0 THEN
                        NoOfLoops := 1;

                    CopyText := '';
                    SETRANGE(Number, 1, NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord()
            var
                CreateSignature: Codeunit "PTSS Create Signature";
                PurchInvoiceLine: Record "Purchase Line";
                IsProduct: Boolean;
                Item: Record Item;
                WithholdingTaxCode1, WithholdingTaxCode2 : Record "PTSS Withholding Tax Codes";
                Language: Codeunit "Language";
                WithTaxLedgerEntry: Record "PTSS With. Tax Ledger Entry";
            begin
                if not PrintDocumentSystemLanguage then
                    CurrReport.Language := Language.GetLanguageIdOrDefault("Language Code");

                FormatAddressFields("Purchase Header");
                FormatDocumentFields("Purchase Header");

                DimSetEntry1.SETRANGE("Dimension Set ID", "Dimension Set ID");

                IF Print THEN BEGIN
                    IF CurrReport.USEREQUESTPAGE AND ArchiveDocument OR
                       NOT CurrReport.USEREQUESTPAGE AND PurchSetup."Archive Orders"
                    THEN
                        ArchiveManagement.StorePurchDocument("Purchase Header", LogInteraction);
                END;

                if "Purchase Header"."PTSS Withholding Invoice" then begin
                    PTSSWithLineInci := GetIncidenceForWithholdingTax();
                    "Purchase Header".CalcFields("PTSS Withholding Tax Amount");
                    PTSSTotalWihholdingAmt := ABS("Purchase Header"."PTSS Withholding Tax Amount");
                    PTSSWithholdingCode1 := GetWithholdingCode1();
                    PTSSWithholdingCode2 := GetWithholdingCode2();

                    if PTSSWithholdingCode1 <> '' then begin
                        WithholdingTaxCode1.Get(PTSSWithholdingCode1);
                        if NOT WithholdingTaxCode1."PTSS Exempt" then //230334700,n
                            PTSSWithLineAmt1 := PTSSWithLineInci * (WithholdingTaxCode1.Tax / 100);
                    end;

                    if PTSSWithholdingCode2 <> '' then begin
                        WithholdingTaxCode2.Get(PTSSWithholdingCode2);
                        if NOT WithholdingTaxCode2."PTSS Exempt" then //230334700,n
                            PTSSWithLineAmt2 := PTSSWithLineInci * (WithholdingTaxCode2.Tax / 100);
                    end;

                    PTSSWithholdingPerc1 := WithholdingTaxCode1.Tax;
                    PTSSWithholdingPerc2 := WithholdingTaxCode2.Tax;
                    PTSSTotalWihholdingAmt := PTSSWithLineAmt1 + PTSSWithLineAmt2;
                end;

                //guangai-(
                // Item Tracking:
                IF ShowLotSN THEN BEGIN
                    TrackingSpecBuffer.RESET();
                    ItemTrackingMgt.SetRetrieveAsmItemTracking(TRUE);
                    TrackingSpecCount := ItemTrackingMgt.RetrieveDocumentItemTracking(TrackingSpecBuffer, "Purchase Header"."No.",
                        DATABASE::"Purchase Header", 1);
                    ItemTrackingMgt.SetRetrieveAsmItemTracking(FALSE);
                END;
                //)-guangai
                PTSSTotalAmtToPay := -PTSSTotalWihholdingAmt + TotalAmount;
            end;

            trigger OnPostDataItem()
            begin
                MARKEDONLY := TRUE;
                COMMIT();
            end;

            trigger OnPreDataItem()
            begin
                Print := Print OR NOT IsReportInPreviewMode();
                //guangai-(
                // Item Tracking:
                IF ShowLotSN THEN BEGIN
                    TrackingSpecCount := 0;
                    OldRefNo := 0;
                    ShowGroup := FALSE;
                    TotalQty := 0;
                END;
                //)-guangai
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(NoOfCopies; NoOfCopies)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'No. of Copies';
                        ToolTip = 'Specifies how many copies of the document to print.';
                    }
                    field(ShowInternalInfo; ShowInternalInfo)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Show Internal Information';
                        ToolTip = 'Specifies if you want the printed report to show information that is only for internal use.';
                    }
                    field(ArchiveDocument; ArchiveDocument)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Archive Document';
                        ToolTip = 'Specifies if the document is archived after you print it.';

                        trigger OnValidate()
                        begin
                            IF NOT ArchiveDocument THEN
                                LogInteraction := FALSE;
                        end;
                    }
                    field(LogInteraction; LogInteraction)
                    {
                        ApplicationArea = Basic, Suite;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTip = 'Specifies that interactions with the contact are logged.';

                        trigger OnValidate()
                        begin
                            IF LogInteraction THEN
                                ArchiveDocument := ArchiveDocumentEnable;
                        end;
                    }
                    field(ShowAssemblyComponents; DisplayAssemblyInformation)
                    {
                        ApplicationArea = Assembly;
                        Caption = 'Show Assembly Components';
                        ToolTip = 'Specifies if you want the report to include information about components that were used in linked assembly orders that supplied the item(s) being sold.';
                    }
                    //230739523,sn
                    field(PrintCrossReference; PrintCrossReference)
                    {
                        Caption = 'Print Cross Reference';
                        ApplicationArea = Basic, Suite;
                    }
                    //230739523,en
                    //guangai-(
                    field(ShowLotSN; ShowLotSN)
                    {
                        Caption = 'Show Serial/Lot Number Appendix';
                        ApplicationArea = All;
                    }
                    //-guangai)
                }
            }
        }
    }

    labels
    {
        //guangai-(
        SuplierLbl = 'Suplier';
        OrderDateLbl = 'Order Date';
        Total = 'Total';
        //)-guangai

    }

    trigger OnInitReport()
    begin
        GLSetup.GET();
        CompanyInfo.GET();
        CompanyInfo.CALCFIELDS(Picture);
        PurchSetup.GET();
        //FormatDocument.SetLogoPosition("Logo Position on Documents", CompanyInfo1, CompanyInfo2, CompanyInfo3);
    end;

    var
        WorkingDocNo: Text;
        WorkingDocDate: Date;
        Print: Boolean;
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record 10;
        PaymentTerms: Record 3;
        SalesPurchPerson: Record 13;
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        PurchSetup: Record "Purchases & Payables Setup";
        VATAmountLine: Record 290 temporary;
        DimSetEntry1: Record 480;
        DimSetEntry2: Record 480;
        RespCenter: Record 5714;
        CurrExchRate: Record 330;
        TempPostedAsmLine: Record 911 temporary;
        VATClause: Record 560;
        FormatAddr: Codeunit 365;
        SegManagement: Codeunit 5051;
        MoreLines: Boolean;
        ShowShippingAddr: Boolean;
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        LogInteraction: Boolean;
        [InDataSet]
        LogInteractionEnable: Boolean;
        DisplayAssemblyInformation: Boolean;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        CalculatedExchRate: Decimal;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvDiscAmount: Decimal;
        TotalPaymentDiscOnVAT: Decimal;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        FirstValueEntryNo: Integer;
        OutputNo: Integer;
        VendAddr: array[8] of Text[50];
        ShipToAddr: array[8] of Text[50];
        CompanyAddr: array[8] of Text[50];
        VATNoText: Text[80];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        CopyText: Text[30];
        DimText: Text[75];
        OldDimText: Text[75];
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        Signature: Text[250];
        TextOrig2Via: Text[20];
        TotalQty: Decimal;
        TrackingSpecBuffer: Record 336 temporary;
        TrackingSpecCount: Integer;
        OldNo: Code[20];
        OldRefNo: Integer;
        ShowGroup: Boolean;
        ItemTrackingAppendix: Report 6521;
        ShowCorrectionLines: Boolean;
        ShowTotal: Boolean;
        TrackingSpecCountLines: Integer;
        ControlTrackingTransport: Decimal;
        ShipFromAddr: array[8] of Text[50];
        TotallyPaid: Text[250];
        PrintDocumentSystemLanguage: Boolean;
        TotalAmountStampDuty: Decimal;
        TotalAmountInEUR: Decimal;
        VisibleFeeMessage: Text[1000];
        WithHoldingDescription: Text;
        InvNoText: Label 'Order';
        InvoiceNoCaption: Label 'Invoice No.';
        WithHoldingTaxCodeCaption: Label 'WithHolding Tax Code';
        WithHoldingTaxPercCaption: Label 'WithHolding Tax %';
        WithHoldingDescCaption: Label 'Description';
        WithHoldingTaxAmountCaption: Label 'Amount';
        TxtOriginal: Label 'Original';
        Txt2Via: Label 'Duplicate';
        Txt2Via2: Label '2nd Copy'; //230537837,n
        Text31022895: Label 'COPY';
        Text31022897: Label 'VAT Amount Specification in ';
        Text31022898: Label 'Local Currency';
        Text31022899: Label 'Exchange rate: %1/%2';
        Text31022902: Label 'Total %1 Excl. VAT ';
        Text31022903: Label 'Duplicate';
        Text31022904: Label 'Triplicate';
        Text31022907: Label 'ST Amount';
        Text31022908: Label 'Total EUR';
        Text31022911: Label 'ATCUD:';
        Text31022912: Label 'This document is not an invoice.';
        CompanyInfoPhone: Label 'Phone No.';
        InvDiscountAmt: Label 'Discount Amount';
        VATRegNo: Label 'VAT Reg. No.';
        UnitCost: Label 'Unit Cost';
        AmountCap: Label 'Amount';
        VATClauses: Label 'VAT Clause';
        Subtotal: Label 'SubTotal';
        LineAmtAfterInvDisc: Label 'Payment Discount on VAT';
        LineDim: Label 'Line Dimensions';
        PaymentTermsDescription: Label 'Payment Terms';
        ShptMethodDesc: Label 'Shipment Method';
        VATPercentage: Label 'VAT %';
        VATBase: Label 'VAT Base';
        VATAmt: Label 'VAT Amount';
        CompanyEmail: Label 'E-Mail';
        Qty: Label 'Qty.';
        ShipmentDate: Label 'Shipment Date';
        ShipmentTime: Label 'Shipment Time';
        PostingDate: Label 'Posting Date';
        UOM: Label 'Unit';
        LotNo: Label 'Lot No.';
        SerialNo: Label 'Serial No.';
        Description: Label 'Description';
        No: Label 'No.';
        TransHeader: Label 'Transported...';
        TransFooter: Label 'Transport...';
        UnloadLoc: Label 'Unload Location';
        LoadLoc: Label 'Load Loc';
        ExemptionReasonText: Label 'VAT Clause';
        RegistrationAT: Label 'C.R.C.';
        //ProductsMadeAvail: Label 'The Items/Services were placed available to Customer on the date of the document, according to f alinea, nº 5 of article 36 of the CIVA.';
        WithholdingTaxCap: Label 'WithholdingTaxAmount';
        PageCap: Label 'Page';
        ArchiveDocument: Boolean;
        FormatDocument: Codeunit 368;
        PurchPersonText: Text[30];
        PrepmtPaymentTerms: Record 3;
        ArchiveManagement: Codeunit 5063;
        TotalAmountInAddCurr: Decimal;
        TotalAmountInLC: Decimal;
        RetCodLbl: Label 'Ret. Code';
        RetPercLbl: Label 'Ret. %';
        RetIncLbl: Label 'Incidence';
        RetAmountLbl: Label 'Amount';
        PTSSWithLineInci: Decimal;
        PTSSWithholdingCode1, PTSSWithholdingCode2 : Code[10];
        PTSSWithLineAmt1, PTSSWithLineAmt2 : Decimal;
        PTSSWithholdingPerc1, PTSSWithholdingPerc2 : Decimal;
        PTSSHasWithholdingCode1, PTSSHasWithholdingCode2 : Boolean;
        PTSSTotalWithholdingLbl: Label 'Total:';
        PTSSTotalWihholdingAmt: Decimal;
        PTSSWithholdingSpecificationLbl: Label 'Withholding Tax Specifications';
        PTSSVATSpecificationLbl: Label 'VAT Specification';
        PTSSRetentionLbl: Label 'With. Tax'; //NEW
        YesLbl: Label 'Yes'; //NEW
        PTSSTotalToPay: Label 'Total To Pay';
        PTSSRetAmtLbl: Label 'Withholding Amount';
        PTSSTotalAmtToPay: Decimal;
        ArchiveDocumentEnable: Boolean;
        PurchInvDueDate: Label 'Due Date';
        PurchInvLineDisc: Label 'Disc. %';
        VendorOrderNoLbl: Label 'Vendor Order No.';
        PurchInvLineNo2: Text;
        VendorItemNoLbl: Label 'Vendor Item No.: %1'; //230537837,n
        ItemRefNo: Text; //230537837,n
        PrintCrossReference: Boolean; //230739523,n

        ShiptoAddressCaptionLbl: Label 'Ship-to Address'; //230841572,n
        ShowLotSN: Boolean;//Guangai
        ItemTrackingMgt: Codeunit "Item Tracking Doc. Management";//guangai


    procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(4) <> '';
    end;

    procedure BlanksForIndent(): Text[10]
    begin
        EXIT(PADSTR('', 2, ' '));
    end;

    procedure GetUOMText(UOMCode: Code[10]): Text[10]
    var
        UnitOfMeasure: Record 204;
    begin
        IF NOT UnitOfMeasure.GET(UOMCode) THEN
            EXIT(UOMCode);
        EXIT(UnitOfMeasure.Description);
    end;

    local procedure IsReportInPreviewMode(): Boolean
    var
        MailManagement: Codeunit 9520;
    begin
        EXIT(CurrReport.PREVIEW OR MailManagement.IsHandlingGetEmailBody());
    end;

    procedure InitializeRequest(NoOfCopiesFrom: Integer; ShowInternalInfoFrom: Boolean; ArchiveDocumentFrom: Boolean; LogInteractionFrom: Boolean; PrintFrom: Boolean; DisplayAsmInfo: Boolean)
    begin
        NoOfCopies := NoOfCopiesFrom;
        ShowInternalInfo := ShowInternalInfoFrom;
        ArchiveDocument := ArchiveDocumentFrom;
        LogInteraction := LogInteractionFrom;
        Print := PrintFrom;
        DisplayAssemblyInformation := DisplayAsmInfo;
    end;

    local procedure FormatAddressFields(var PurchHeader: Record "Purchase Header")
    begin
        FormatAddr.GetCompanyAddr(PurchHeader."Responsibility Center", RespCenter, CompanyInfo, CompanyAddr);
        FormatAddr.PurchHeaderPayTo(VendAddr, PurchHeader);
        //ShowShippingAddr := PurchHeaderShipTo(ShipToAddr, VendAddr, PurchHeader);
        FormatAddr.PurchHeaderShipTo(ShipToAddr, PurchHeader); //230841572,n
    end;

    local procedure FormatDocumentFields(PurchHeader: Record "Purchase Header")
    begin
        FormatDocument.SetTotalLabels(PurchHeader."Currency Code", TotalText, TotalInclVATText, TotalExclVATText);
        FormatDocument.SetPurchaser(SalesPurchPerson, PurchHeader."Purchaser Code", PurchPersonText);
        FormatDocument.SetPaymentTerms(PaymentTerms, PurchHeader."Payment Terms Code", PurchHeader."Language Code");
        FormatDocument.SetPaymentTerms(PrepmtPaymentTerms, PurchHeader."Prepmt. Payment Terms Code", PurchHeader."Language Code");
        FormatDocument.SetShipmentMethod(ShipmentMethod, PurchHeader."Shipment Method Code", PurchHeader."Language Code");

        VATNoText := FormatDocument.SetText(PurchHeader."VAT Registration No." <> '', PurchHeader.FIELDCAPTION("VAT Registration No."));
    end;

    local procedure DocumentCaption(): Text[250]
    var
        NoSeries: Record 308;
    begin
        NoSeries.GET("Purchase Header"."No. Series");
        EXIT(InvoiceNoCaption);
    end;

    procedure CollectAsmInformation()
    var
        ValueEntry: Record 5802;
        ItemLedgerEntry: Record 32;
        PostedAsmHeader: Record 910;
        PostedAsmLine: Record 911;
        SalesShipmentLine: Record 111;
    begin
        TempPostedAsmLine.DELETEALL();
        IF "Purchase Line".Type <> "Purchase Line".Type::Item THEN
            EXIT;
        ValueEntry.SETCURRENTKEY("Document No.");
        ValueEntry.SETRANGE("Document No.", "Purchase Line"."Document No.");
        ValueEntry.SETRANGE("Document Type", ValueEntry."Document Type"::"Purchase Invoice");
        ValueEntry.SETRANGE("Document Line No.", "Purchase Line"."Line No.");
        ValueEntry.SETRANGE(Adjustment, FALSE);
        IF NOT ValueEntry.FINDSET() THEN
            EXIT;
        REPEAT
            IF ItemLedgerEntry.GET(ValueEntry."Item Ledger Entry No.") THEN
                IF ItemLedgerEntry."Document Type" = ItemLedgerEntry."Document Type"::"Sales Shipment" THEN BEGIN
                    SalesShipmentLine.GET(ItemLedgerEntry."Document No.", ItemLedgerEntry."Document Line No.");
                    IF SalesShipmentLine.AsmToShipmentExists(PostedAsmHeader) THEN BEGIN
                        PostedAsmLine.SETRANGE("Document No.", PostedAsmHeader."No.");
                        IF PostedAsmLine.FINDSET() THEN
                            REPEAT
                                TreatAsmLineBuffer(PostedAsmLine);
                            UNTIL PostedAsmLine.NEXT() = 0;
                    END;
                END;
        UNTIL ValueEntry.NEXT() = 0;
    end;

    procedure TreatAsmLineBuffer(PostedAsmLine: Record 911)
    begin
        CLEAR(TempPostedAsmLine);
        TempPostedAsmLine.SETRANGE(Type, PostedAsmLine.Type);
        TempPostedAsmLine.SETRANGE("No.", PostedAsmLine."No.");
        TempPostedAsmLine.SETRANGE("Variant Code", PostedAsmLine."Variant Code");
        TempPostedAsmLine.SETRANGE(Description, PostedAsmLine.Description);
        TempPostedAsmLine.SETRANGE("Unit of Measure Code", PostedAsmLine."Unit of Measure Code");
        IF TempPostedAsmLine.FINDFIRST() THEN BEGIN
            TempPostedAsmLine.Quantity += PostedAsmLine.Quantity;
            TempPostedAsmLine.MODIFY();
        end else begin
            CLEAR(TempPostedAsmLine);
            TempPostedAsmLine := PostedAsmLine;
            TempPostedAsmLine.INSERT();
        END;
    end;

    local procedure GetIncidenceForWithholdingTax(): Decimal
    var
        PurchLine: Record "Purchase Line";
        WithholdingTaxIncidence: Decimal;
    begin
        WithholdingTaxIncidence := 0;

        PurchLine.SetFilter("Document No.", "Purchase Header"."No.");
        PurchLine.SetRange("PTSS Withholding Tax", true);
        PurchLine.SetFilter(Type, '<>%1', PurchLine.Type::" ");

        if PurchLine.FindSet() then begin
            repeat
                //230537375,o WithholdingTaxIncidence += PurchLine."Unit Cost";
                WithholdingTaxIncidence += PurchLine."Unit Cost" * PurchLine.Quantity; //230537375,n
            until PurchLine.Next() = 0;
        end;

        exit(WithholdingTaxIncidence);
    end;

    local procedure GetWithholdingCode1(): Code[10]
    var
        PurchLine: Record "Purchase Line";
    begin
        PTSSHasWithholdingCode1 := false;

        PurchLine.SetRange("Document No.", "Purchase Header"."No.");
        PurchLine.SetRange("PTSS Withholding Line", true);
        PurchLine.SetFilter("PTSS Withholding Tax Code 1", '<>%1', '');
        if PurchLine.FindFirst() then begin
            PTSSHasWithholdingCode1 := True;
            exit(PurchLine."PTSS Withholding Tax Code 1");
        end;

        exit('');
    end;

    local procedure GetWithholdingCode2(): Code[10]
    var
        PurchLine: Record "Purchase Line";
    begin
        PTSSHasWithholdingCode2 := false;

        PurchLine.SetRange("Document No.", "Purchase Header"."No.");
        PurchLine.SetRange("PTSS Withholding Line", true);
        PurchLine.SetFilter("PTSS Withholding Tax Code 2", '<>%1', '');
        if PurchLine.FindFirst() then begin
            PTSSHasWithholdingCode2 := True;
            exit(PurchLine."PTSS Withholding Tax Code 2");
        end;

        exit('');
    end;

    //230333092
    //Criação de um layout paara as encomendas de compra em conformidade com o da fatura.

    //230334700
    //Criada possibilidade de criar nos documentos linhas de retenção na fonte isentas:
    //- Criado campo "Isento" na tabela dos códigos de retenção
    //- Quando é utilizado um código de ret. Isento, a função "Calcular Retenção" cria uma linha de retenção com valores a 0.
    //- Para essa linha, não são criados movimentos de contabilidade ou de iva, apenas um movimento de retenção
    //- Esse movimento vai ter base, mas os valores retidos vão ser 0
    //- Essa informação irá constar nos mapas "Taxas Retenção" e "Mapa Resumo Rend. e Retenção"

    //230537375
    //Incidência de retenção errada nos mapas quando quantidades das linhas é superior a 1.
    //Alteração no método de cálculo de incidência de modo a apresentar o valor corretamente, contabilizando as quantidades corretas

    //230537837
    //Correções aos mapas

    //230739523
    //Criado campo nas requestpages que permite a inclusão ou não das referências cruzadas nos mapas onde estas se aplicam.

    //230841572
    //Não estava a ser impressa a informação do ShipToAddress
}
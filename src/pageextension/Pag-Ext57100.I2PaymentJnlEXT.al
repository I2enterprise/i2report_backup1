pageextension 57100 "I2_PaymentJnl_EXT" extends "Payment Journal"
{
    actions
    {
        // hide buttom 
         modify("ITWO_Journal Voucher")
         {
             Visible = false;
         }
        //add ต่อจาก buttom ไหน 
        addafter("ITWO_Journal Voucher")
        {
            action(I2_JournalVoucher)
            {
                ApplicationArea = All;
                Caption = 'Journal Voucher - I2';
                // input Image 
                Image = Document;
                trigger OnAction()
                var
                    GLTmp: Record "G/L Entry" temporary;
                    JournalVoucher: Report "I2_Payment Voucher Doc";
                    QUICKPreviewPosting: Codeunit QUICK_PreviewPosting;
                    GenJnlLine: Record "Gen. Journal Line";
                begin
                    GenJnlLine.Copy(Rec);
                    GenJnlLine.SetRange("Document No.", Rec."Document No.");
                    GenJnlLine.FindFirst();
                    //function 
                    QUICKPreviewPosting.QUICK_GenLinePreviewVourcher(GenJnlLine, GLTmp);
                    CLEAR(JournalVoucher);
                    JournalVoucher.SetProperties(GLTmp);
                    JournalVoucher.RUNMODAL
                end;

            }

        }
        // promote buttom 
        addafter("ITWO_Journal Voucher_Promoted")
        {
            actionref(I2_JournalVoucher_Promoted; I2_JournalVoucher)
            {

            }
        }

    }

}

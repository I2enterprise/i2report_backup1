report 57100 "I2_Cost_Income_ANCHALEE"
{
    ApplicationArea = All;
    Caption = 'I2_Cost_Income_ANCHALEE';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    PreviewMode = PrintLayout;
    RDLCLayout = './src/ReportRDL/I2_Cost_Income_ANCHALEE.rdl';
    dataset
    {
        dataitem(DimensionValue; "Dimension Value")
        {


            DataItemTableView = sorting("Dimension Code", Code) where("Dimension Code" = filter('DEPARTMENT|PROJECT NO'));
            RequestFilterFields = Code;
            column(DimentionFilter; DimentionFilter)
            {

            }
            column(StartDateFilter; StartDateFilter)
            {

            }
            column(EndDateFilter; EndDateFilter)
            {

            }
            column(REVcodeFilter; REVcodeFilter)
            {

            }
            column(CATcodeFilter; CATcodeFilter)
            {

            }


            column(Code; "Code")
            {
            }
            column(Name; Name)
            {
            }
            column(IncomeAmt1; IncomeAmt[1])
            {

            }
            column(IncomeAmt2; IncomeAmt[2])
            {

            }
            column(IncomeAmt3; IncomeAmt[3])
            {

            }
            column(IncomeAmt4; IncomeAmt[4])
            {

            }
            column(IncomeAmt5; IncomeAmt[5])
            {

            }
            column(IncomeAmt6; IncomeAmt[6])
            {

            }
            column(IncomeAmt7; IncomeAmt[7])
            {

            }
            column(IncomeAmt8; IncomeAmt[8])
            {

            }
            column(IncomeAmt9; IncomeAmt[9])
            {

            }
            column(IncomeAmt10; IncomeAmt[10])
            {

            }
            column(IncomeAmt11; IncomeAmt[11])
            {

            }
            column(IncomeAmt12; IncomeAmt[12])
            {

            }
            column(IncomeAmt13; IncomeAmt[13])
            {

            }
            column(IncomeAmt14; IncomeAmt[14])
            {

            }
            column(IncomeAmt15; IncomeAmt[15])
            {

            }
            column(IncomeAmt16; IncomeAmt[16])
            {

            }
            column(IncomeAmt17; IncomeAmt[17])
            {

            }
            column(IncomeAmt30; IncomeAmt[30])
            {

            }

            column(DMAmt1; DMAmt[1])
            {

            }
            column(DMAmt2; DMAmt[2])
            {

            }
            column(DMAmt3; DMAmt[3])
            {

            }
            column(DMAmt4; DMAmt[4])
            {

            }
            column(DMAmt5; DMAmt[5])
            {

            }
            column(DMAmt6; DMAmt[6])
            {

            }
            column(DMAmt7; DMAmt[7])
            {

            }
            column(DMAmt8; DMAmt[8])
            {

            }
            column(DMAmt9; DMAmt[9])
            {

            }
            column(DMAmt10; DMAmt[10])
            {

            }
            column(DMAmt11; DMAmt[11])
            {

            }
            column(DMAmt12; DMAmt[12])
            {

            }


            column(DMAmt30; DMAmt[30])
            {

            }
            column(DLAmt1; DLAmt[1])
            {

            }
            column(DLAmt30; DLAmt[30])
            {

            }

            column(OHAmt1; OHAmt[1])
            {

            }
            column(OHAmt2; OHAmt[2])
            {

            }
            column(OHAmt3; OHAmt[3])
            {

            }
            column(OHAmt4; OHAmt[4])
            {

            }
            column(OHAmt5; OHAmt[5])
            {

            }
            column(OHAmt6; OHAmt[6])
            {

            }
            column(OHAmt7; OHAmt[7])
            {

            }
            column(OHAmt8; OHAmt[8])
            {

            }
            column(OHAmt9; OHAmt[9])
            {

            }
            column(OHAmt10; OHAmt[10])
            {

            }
            column(OHAmt11; OHAmt[11])
            {

            }
            column(OHAmt12; OHAmt[12])
            {

            }
            column(OHAmt13; OHAmt[13])
            {

            }
            column(OHAmt14; OHAmt[14])
            {

            }
            column(OHAmt15; OHAmt[15])
            {

            }
            column(OHAmt16; OHAmt[16])
            {

            }
            column(OHAmt17; OHAmt[17])
            {

            }
            column(OHAmt18; OHAmt[18])
            {

            }
            column(OHAmt19; OHAmt[19])
            {

            }
            column(OHAmt30; OHAmt[30])
            {

            }
            column(OtherAmt1; OtherAmt[1])
            {

            }
            column(OtherAmt2; OtherAmt[2])
            {

            }
            column(OtherAmt3; OtherAmt[3])
            {

            }
            column(OtherAmt4; OtherAmt[4])
            {

            }
            column(OtherAmt5; OtherAmt[5])
            {

            }
            column(OtherAmt6; OtherAmt[6])
            {

            }
            column(OtherAmt7; OtherAmt[7])
            {

            }
            column(OtherAmt8; OtherAmt[8])
            {

            }
            column(OtherAmt9; OtherAmt[9])
            {

            }
            column(OtherAmt10; OtherAmt[10])
            {

            }
            column(OtherAmt11; OtherAmt[11])
            {

            }
            column(ToltalCost; ToltalCost)
            {

            }
            column(TotalMargin; TotalMargin)
            {

            }

            trigger OnAfterGetRecord()
            begin

                Clear(IncomeAmt);
                Clear(DMAmt);
                Clear(DLAmt);
                Clear(OHAmt);
                Clear(OtherAmt);
                Clear(ToltalCost);
                Clear(TotalMargin);
                if "Dimension Code" = 'PROJECT NO' then begin


                    GetGLAmt('411010', Code, '', IncomeAmt[1]);
                    GetGLAmt('411020', Code, '', IncomeAmt[2]);
                    GetGLAmt('411030', Code, '', IncomeAmt[3]);
                    GetGLAmt('422010', Code, '', IncomeAmt[4]);
                    GetGLAmt('422020', Code, '', IncomeAmt[5]);
                    GetGLAmt('422030', Code, '', IncomeAmt[6]);
                    GetGLAmt('421010', Code, '', IncomeAmt[7]);
                    GetGLAmt('423010', Code, '', IncomeAmt[8]);
                    GetGLAmt('490010', Code, '', IncomeAmt[9]);
                    GetGLAmt('490020', Code, '', IncomeAmt[10]);
                    GetGLAmt('490030', Code, '', IncomeAmt[11]);
                    GetGLAmt('490040', Code, '', IncomeAmt[12]);
                    GetGLAmt('490050', Code, '', IncomeAmt[13]);
                    GetGLAmt('490060', Code, '', IncomeAmt[14]);
                    GetGLAmt('490070', Code, '', IncomeAmt[15]);
                    GetGLAmt('422040', Code, '', IncomeAmt[17]);
                    // DM
                    GetGLAmt('511010', Code, '', DMAmt[1]);
                    GetGLAmt('521010', Code, '', DMAmt[2]);
                    GetGLAmt('521020', Code, '', DMAmt[3]);
                    GetGLAmt('521030', Code, '', DMAmt[4]);
                    GetGLAmt('521040', Code, '', DMAmt[5]);
                    GetGLAmt('521050', Code, '', DMAmt[6]);
                    GetGLAmt('522010', Code, '', DMAmt[7]);
                    GetGLAmt('522020', Code, '', DMAmt[8]);
                    GetGLAmt('522030', Code, '', DMAmt[9]);
                    GetGLAmt('522040', Code, '', DMAmt[10]);
                    GetGLAmt('527020', Code, '', DMAmt[11]);
                    GetGLAmt('522011', Code, '', DMAmt[12]);
                    //DL
                    GetGLAmt('523020', Code, '', DLAmt[1]);
                    // OH 
                    GetGLAmt('523010', Code, '', OHAmt[1]);
                    GetGLAmt('523030', Code, '', OHAmt[2]);
                    GetGLAmt('523040', Code, '', OHAmt[3]);
                    GetGLAmt('524030', Code, '', OHAmt[4]);
                    GetGLAmt('525010', Code, '', OHAmt[5]);
                    GetGLAmt('525020', Code, '', OHAmt[6]);
                    GetGLAmt('526010', Code, '', OHAmt[7]);
                    GetGLAmt('526020', Code, '', OHAmt[8]);
                    GetGLAmt('526030', Code, '', OHAmt[9]);
                    GetGLAmt('526040', Code, '', OHAmt[10]);
                    GetGLAmt('526050', Code, '', OHAmt[11]);
                    GetGLAmt('527010', Code, '', OHAmt[12]);
                    GetGLAmt('527020', Code, '', OHAmt[13]);
                    GetGLAmt('527030', Code, '', OHAmt[14]);
                    GetGLAmt('527040', Code, '', OHAmt[15]);
                    GetGLAmt('524010', Code, '', OHAmt[16]);
                    GetGLAmt('524020', Code, '', OHAmt[17]);
                    GetGLAmt('524040', Code, '', OHAmt[18]);
                    GetGLAmt('525030', Code, '', OHAmt[19]);
                    // Other 
                    GetGLAmt('118030', Code, '', OtherAmt[1]);
                    GetGLAmt('118040', Code, '', OtherAmt[2]);
                    GetGLAmt('661060', Code, '', OtherAmt[3]);
                    GetGLAmt('119110', Code, '', OtherAmt[4]);
                    GetGLAmt('219420', Code, '', OtherAmt[5]);
                    GetGLAmt('118031', Code, '', OtherAmt[6]);
                    GetGLAmt('118041', Code, '', OtherAmt[7]);
                    GetGLAmt('219210', Code, '', OtherAmt[8]);
                    GetGLAmt('219220', Code, '', OtherAmt[9]);
                    GetGLAmt('119210', Code, '', OtherAmt[10]);
                    GetGLAmt('119214', Code, '', OtherAmt[11]);
                end else
                    if "Dimension Code" = 'DEPARTMENT' then begin
                        // Income
                        GetGLAmt('490080', '', Code, IncomeAmt[16]);
                        //DL
                        GetGLAmt('523020', '', Code, DLAmt[1]);

                        //OH
                        GetGLAmt('523010', Code, '', OHAmt[15]);



                    end;
                // sum ออกด้านข้าง
                IncomeAmt[30] := IncomeAmt[1] +
                                IncomeAmt[2] + IncomeAmt[3] +
                                IncomeAmt[4] + IncomeAmt[5] + IncomeAmt[6] +
                                IncomeAmt[7] + IncomeAmt[8] + IncomeAmt[9] +
                                IncomeAmt[10] + IncomeAmt[11] + IncomeAmt[12] + IncomeAmt[13] +
                                IncomeAmt[14] + IncomeAmt[15] + IncomeAmt[16] + IncomeAmt[17];

                DMAmt[30] := DMAmt[1] +
                                DMAmt[2] + DMAmt[3] +
                                DMAmt[4] + DMAmt[5] + DMAmt[6] +
                                DMAmt[7] + DMAmt[8] + DMAmt[9] +
                                DMAmt[10] + DMAmt[11] + DMAmt[12];

                DLAmt[30] := DLAmt[1];

                OHAmt[30] := OHAmt[1] + OHAmt[2] + OHAmt[3] +
                                OHAmt[4] + OHAmt[5] + OHAmt[6] +
                                OHAmt[7] + OHAmt[8] + OHAmt[9] +
                                OHAmt[10] + OHAmt[11] + OHAmt[12] + OHAmt[13] +
                                OHAmt[14] + OHAmt[15] + OHAmt[16] + OHAmt[17] +
                                OHAmt[18] + OHAmt[19];
                ToltalCost := DMAmt[30] + DLAmt[30] + OHAmt[30];
                //  A+b-c
                TotalMargin := ToltalCost + IncomeAmt[30];


            end;


        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {

                group(Options)
                {
                    Caption = 'Options';

                    //add field 
                    field(Asofdate; Asofdate)
                    {
                        Caption = 'As of date';
                        ApplicationArea = All;

                    }
                    field(StartDate; StartDate)
                    {
                        Caption = 'Start Date';
                        ApplicationArea = All;
                    }
                    field(EndDate; EndDate)
                    {
                        Caption = 'End Date';
                        ApplicationArea = All;
                    }
                    field(REVcode; REVcode)
                    {
                        Caption = 'REVENUE';
                        ApplicationArea = All;
                        TableRelation = "Dimension Value".Code where("Dimension Code" = filter('REVENUE'));
                    }
                    field(CATcode; CATcode)
                    {
                        Caption = 'CATEGORY';
                        ApplicationArea = All;
                        TableRelation = "Dimension Value".Code where("Dimension Code" = filter('CATEGORY'));
                    }
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }



    }
    trigger OnPreReport()
    begin
        DimentionFilter := DimensionValue.GetFilters;
        // แปลง all  type เป็น string 
        StartDateFilter := StrSubstNo('%1', StartDate);
        EndDateFilter := StrSubstNo('%1', EndDate);
        REVcodeFilter := REVcode;
        CATcodeFilter := CATcode;
        if Asofdate = true then begin
            if (EndDate = 0D) then begin
                Error('Please input Enddate');
            end;
        end else begin
            if (StartDate = 0D) then begin
                Error('Please input Startdate');
            end;
            if (EndDate = 0D) then begin
                Error('Please input Enddate');
            end;
        end;
    end;

    // function 
    local procedure GetGLAmt(GLAccNo: Code[20]; ProjectNo: Code[20]; Dep: Code[20]; var Amt: Decimal)
    var
        GLEntry: Record "G/L Entry";
    begin
        // Clear(IncomeAmt);
        GLEntry.Reset();
        GLEntry.SetCurrentKey("G/L Account No.", "Global Dimension 1 Code", "Global Dimension 2 Code", "Posting Date", "VAT Reporting Date");
        GLEntry.SetRange("G/L Account No.", GLAccNo);
        if ProjectNo <> '' then
            GLEntry.SetRange("Global Dimension 1 Code", ProjectNo);
        if Dep <> '' then
            GLEntry.SetRange("Global Dimension 2 Code", Dep);
        if CATcode <> '' then
            GLEntry.SetRange("Shortcut Dimension 3 Code", CATcode);
        if REVcode <> '' then
            GLEntry.SetFilter("Shortcut Dimension 6 Code", REVcode);

        // แก้ สูตรใหม่ 

        if Asofdate = true then begin
            if (EndDate <> 0D) then
                GLEntry.SetFilter("Posting Date", '..%1', EndDate);

        end else begin
            if (StartDate <> 0D) and (EndDate <> 0D) then
                GLEntry.SetRange("Posting Date", StartDate, EndDate);
        end;



        if GLEntry.FindFirst() then
            repeat
                Amt += GLEntry.Amount;

            until GLEntry.Next() = 0;
    end;

    var
        IncomeAmt: array[30] of Decimal;
        // ประกาศตัวแปร 
        DMAmt: array[30] of Decimal;
        DLAmt: array[30] of Decimal;
        OHAmt: array[30] of Decimal;
        OtherAmt: array[30] of Decimal;
        TotalIncomeAmt: array[10] of Decimal;
        ToltalCost: Decimal;
        TotalMargin: Decimal;

        StartDate: Date;
        EndDate: Date;
        REVcode: Code[20];
        CATcode: Text;
        DimentionFilter: Text;
        StartDateFilter: Text;
        EndDateFilter: Text;
        REVcodeFilter: Text;
        CATcodeFilter: Text;
        Asofdate: Boolean;


}

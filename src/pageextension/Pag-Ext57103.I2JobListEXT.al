pageextension 57103 "I2_Job List_EXT" extends "Job List"
{
    layout
    {
        addafter("Bill-to Customer No.")
        {
            field(I2_ITWO_I2Status; Rec.ITWO_I2Status)
            {
                ApplicationArea = All;
            }
            field(I2_DimSales; Rec.I2_DimSales)
            {
                ApplicationArea = All;
            }
            field(I2_StartDate; Rec.I2_StartDate)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Project Start Date field.';
            }
            field(I2_EndDate; Rec.I2_EndDate)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Project End Date field.';
            }
            field(I2_MAStartDate; Rec.I2_MAStartDate)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the MA Start Date field.';
            }
            field(I2_MAEndDate; Rec.I2_MAEndDate)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the MA End Date field.';
            }
            field(I2_Contratprice; JobTask."Contract (Total Price)")
            {
                Caption = 'Billable Total Price';
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the MA End Date field.';
            }
        }
    }
    actions
    {
    }
    trigger OnAfterGetRecord()
    begin
        Clear(JobTask);
        JobTask.Reset();
        JobTask.SetRange("Job No.", Rec."No.");
        JobTask.SetFilter("Job Task No.", '%1', '*-101');
        if JobTask.FindFirst() then begin
            JobTask.CalcFields("Contract (Total Price)");
        end;
    end;

    var
        JobTask: Record "Job Task";
}


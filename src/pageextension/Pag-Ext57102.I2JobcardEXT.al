pageextension 57102 "I2_JobcardEXT" extends "Job Card"
{
    layout
    {
        addafter("ITWO_No. of Archive Version")
        {
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
        }
    }
    actions
    {

    }
}

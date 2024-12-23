tableextension 57100 "I2_Job_EXT" extends Job
{
    fields
    {
        field(57100; I2_DimSales; Code[20])
        {
            Caption = 'Sales Person';
            //DataClassification = CustomerContent;
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("Default Dimension"."Dimension Value Code" where("Table ID" = const(167), "No." = field("No."), "Dimension Code" = filter('SALESPERSON')));
        }
        field(57101; I2_StartDate; date)
        {
            Caption = 'Project Start Date';
            DataClassification = CustomerContent;
        }
        field(57102; I2_EndDate; date)
        {
            Caption = 'Project End Date';
            DataClassification = CustomerContent;
        }
        field(57103; I2_MAStartDate; date)
        {
            Caption = 'MA Start Date';
            DataClassification = CustomerContent;
        }
        field(57104; I2_MAEndDate; date)
        {
            Caption = 'MA End Date';
            DataClassification = CustomerContent;
        }


    }
}

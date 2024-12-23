reportextension 57100 "I2_DetailTrialBalance_Ext" extends "Detail Trial Balance"
{

    dataset
    {
        add("G/L Entry")
        {
            column(I2_GlobalDimension1Code; "Global Dimension 1 Code")
            {
            }
            column(I2_GlobalDimension2Code; "Global Dimension 2 Code")
            {
            }
            column(I2_ShortcutDimension3Code; "Shortcut Dimension 3 Code")
            {
            }
            column(I2_ShortcutDimension4Code; "Shortcut Dimension 4 Code")
            {
            }
            column(I2_ShortcutDimension5Code; "Shortcut Dimension 5 Code")
            {
            }
            column(I2_ShortcutDimension6Code; "Shortcut Dimension 6 Code")
            {
            }
            column(I2_ShortcutDimension7Code; "Shortcut Dimension 7 Code")
            {
            }
            column(I2_ShortcutDimension8Code; "Shortcut Dimension 8 Code")
            {
            }
        }
        // สั่งแก้ data set 
        modify("G/L Account")
        {
            RequestFilterFields = "Global Dimension 1 Filter";

        }
    }
}

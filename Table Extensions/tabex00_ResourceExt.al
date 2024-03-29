tableextension 50100 "CSD Resource Ext" extends Resource
{
    fields
    {
        field(50101; "CSD Resource Type"; Option)
        {
            Caption = 'Resource Type';
            DataClassification = ToBeClassified;
            OptionMembers = Internal,External;
            OptionCaption = 'Internal, External';
        }
        field(50102; "CSD Maximum Participants"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Maximum Participants';
        }
        field(50103; "CSD Quantity per day"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Quantity per day';
        }
        modify("Profit %")
        {
            trigger OnAfterValidate()
            begin
                TestField("Unit Cost");
            end;
        }
        modify(Type)
        {
            OptionCaption = 'Unstructor,Room';
        }
    }

    var
        myInt: Integer;
}
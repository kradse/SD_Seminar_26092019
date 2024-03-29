table 50141 "CSD My Seminar"
{
    Caption = 'My Seminar';
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "User ID"; code[50])
        {
            Caption = 'User Id';
            TableRelation = User;
            DataClassification = ToBeClassified;
        }
        field(20; "Seminar No."; Code[20])
        {
            Caption = 'Seminar No.';
            TableRelation = "CSD Seminar";
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "User Id", "Seminar No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
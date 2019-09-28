table 50118 "CSD Posted Seminar Reg. Header"
{
    // CSD1.00 - 2018-01-01 - D. E. Veloper
    //   Chapter 7 - Lab 3-1
    //   Chapter 8 - Lab 2 - 3     
    //   Added LookupPageId & DrilldownPageId properties
    Caption = 'Posted Seminar Registration Header';
    LookupPageId = "CSD Posted Seminar Reg. List";
    DrillDownPageId = "CSD Posted Seminar Reg. List";

    fields
    {
        field(1; "No."; Code[20])
        {
        }
        field(2; "Starting Date"; Date)
        {

        }
        field(3; "Seminar No."; Code[20])
        {
            TableRelation = "CSD Seminar";
        }
        field(4; "Seminar Name"; Text[50])
        {
        }
        field(5; "Instructor Resource No."; Code[20])
        {
            Caption = 'Instructor Resource No.';
            TableRelation = Resource where (Type = const (Person));
        }
        field(6; "Instructor Name"; Text[50])
        {
            CalcFormula = Lookup (Resource.Name where ("No." = Field ("Instructor Resource No."),
                                                      Type = const (Person)));
            Editable = false;
            FieldClass = FlowField;
        }
        field(7; Status; Option)
        {
            OptionCaption = 'Planning,Registration,Closed,Canceled';
            OptionMembers = Planning,Registration,Closed,Canceled;
        }
        field(8; Duration; Decimal)
        {
            DecimalPlaces = 0 : 1;
        }
        field(9; "Maximum Participants"; Integer)
        {
        }
        field(10; "Minimum Participants"; Integer)
        {
        }
        field(11; "Room Resource No."; Code[20])
        {
            Caption = 'Room Resource No.';
            TableRelation = Resource where (Type = const (Machine));
        }
        field(12; "Room Name"; Text[30])
        {
        }
        field(13; "Room Address"; Text[30])
        {
        }
        field(14; "Room Address 2"; Text[30])
        {
        }
        field(15; "Room Post Code"; Code[20])
        {
            TableRelation = "Post Code".Code;
            ValidateTableRelation = false;
        }
        field(16; "Room City"; Text[30])
        {
        }
        field(17; "Room Country/Reg. Code"; Code[10])
        {
            TableRelation = "Country/Region";
        }
        field(18; "Room County"; Text[30])
        {
        }
        field(19; "Seminar Price"; Decimal)
        {
            AutoFormatType = 1;
        }
        field(20; "Gen. Prod. Posting Group"; Code[10])
        {
            TableRelation = "Gen. Product Posting Group".Code;
        }
        field(21; "VAT Prod. Posting Group"; Code[10])
        {
            TableRelation = "VAT Product Posting Group".Code;
        }
        field(22; Comment; Boolean)
        {
            Caption = 'comment';
            CalcFormula = Exist ("CSD Seminar Comment Line" where ("Table Name" =
                const ("Posted Seminar Reg. Header"), "No." = Field ("No.")));
            Editable = false;
            FieldClass = FlowField;
        }
        field(23; "Posting Date"; Date)
        {
        }
        field(24; "Document Date"; Date)
        {
        }
        field(25; "Reason Code"; Code[10])
        {
            TableRelation = "Reason Code".Code;
        }
        field(26; "No. Series"; Code[10])
        {
            Editable = false;
            TableRelation = "No. Series".Code;
        }
        field(27; "Posting No. Series"; Code[10])
        {
            TableRelation = "No. Series".Code;
        }
        field(29; "User ID"; Code[50])
        {
            Caption = 'User ID';
            TableRelation = User;
            ValidateTableRelation = false;
        }
        field(30; "Source Code"; Code[10])
        {
            Caption = 'Source Code';
            TableRelation = "Source Code";
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(PK; "No.")
        {
        }
        key(Key2; "Room Resource No.")
        {
            SumIndexFields = Duration;
        }
    }
}
table 50104 "CSD Seminar Comment Line"
// CSD1.00 - 2018-01-01 - D. E. Veloper 
// Chapter 5 - Lab 2-1 
// Chapter 7 - Lab 3-2
{
    Caption = 'Seminar Comment Line';
    LookupPageId = "CSD Seminar Comment List";
    DrillDownPageId = "CSD Seminar Comment List";
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Table Name"; Option)
        {
            Caption = 'Table Name';
            OptionMembers = "Seminar","Seminar Registration","Posted Seminar Reg. Header";
            OptionCaption = 'Seminar,Seminar Registration,Posted Seminar Registration';
        }
        field(20; "Document Line No."; Integer)
        {
        }
        field(30; "No."; Code[20])
        {
            Caption = 'No.';

            TableRelation = if ("Table Name" = CONST (Seminar)) "CSD Seminar" else
            if ("Table Name" = const ("Seminar Registration")) "CSD Seminar Reg. Header" else
            if ("Table Name" = const ("Posted Seminar Reg. Header")) "CSD Posted Seminar Reg. Header";
        }
        field(40; "Line No."; Integer)
        {
        }
        field(50; "Date"; Date)
        {
        }
        field(60; "Code"; Code[10])
        {
        }
        field(70; "Comment"; Text[80])
        {
        }
    }

    keys
    {
        key(PK; "Table Name", "Document Line No.", "No.", "Line No.")
        {
            Clustered = true;
        }
    }
    procedure SetupNewLine()
    var
        SeminarCommentLine: Record "CSD Seminar Comment Line";
    begin
        SeminarCommentLine.SetRange("Table Name", "Table Name");
        SeminarCommentLine.SetRange("No.", "No.");
        SeminarCommentLine.SetRange("Document Line No.", "Document Line No.");
        SeminarCommentLine.SetRange("Date", WorkDate());
        if SeminarCommentLine.IsEmpty then
            Date := WorkDate();
    end;
}
page 50100 "CSD Seminar Setup"
{
    PageType = Card;
    SourceTable = "CSD Seminar Setup";
    Caption = 'Seminar Setup';
    InsertAllowed = false;
    DeleteAllowed = false;
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                Caption = 'Numbering';
                field("Seminar Nos"; "Seminar Nos.")
                {
                }
                field("Seminar Registration Nos.";
                "Seminar Registation Nos.")
                {
                }
                field("Posted Seminar Reg. Nos.";
                "Posted Registation Reg Nos.")
                {
                }
            }
        }
    }

    trigger OnOpenPage()
    begin
        if not Get then begin
            Init();
            Insert();
        end;
    end;
}
page 50140 "CSD Seminar Manager Activities"
{
    PageType = CardPart;
    Editable = false;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption = 'Seminar Manager Activities';
    SourceTable = "CSD Seminar Cue";

    layout
    {
        area(Content)
        {
            cuegroup(Registrations)
            {
                Caption = 'Registrations';
                field(Planned; Planned)
                {
                    ApplicationArea = All;

                }
                field(Registered; Registered)
                {

                }
                actions
                {
                    action(New)
                    {
                        Caption = 'New';
                        RunObject = page "CSD Seminar Registration";
                        RunPageMode = Create;
                    }
                }
            }
            cuegroup("For posting")
            {
                field(Closed; Closed)
                {

                }
            }
        }
    }

    var
        myInt: Integer;

    trigger OnOpenPage()
    begin
        if not Get() then begin
            Init();
            Insert();
        end;
    end;
}
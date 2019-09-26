pageextension 50101 "CSD Resource Card Ext" extends "Resource Card"
{
    layout
    {
        addlast(General)
        {
            field("CSD Resourse type"; "CSD Resource Type")
            {
            }
            field("CSD Quantity per day"; "CSD Quantity per day")
            {
            }
        }
        addlast(Content)
        {
            group("CSD Room")
            {
                Caption = 'Room';
                Visible = ShowRoom;
                field("CSD Maximun Partisipants"; "CSD Maximum Perticipants")
                {

                }
            }
        }
    }

    var
        [InDataSet]
        ShowRoom: Boolean;

    trigger OnAfterGetRecord()
    begin
        ShowRoom := (Type = type::Machine);
    end;
}
report 50101 "CSD SeminarRegParticipantList"
{
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = './Layouts/SeminarRegParticipantList.rdl';
    ApplicationArea = All;

    dataset
    {
        dataitem(SeminarRegistrationHeader; "CSD Seminar Reg. Header")
        {
            DataItemTableView = sorting ("No.");
            RequestFilterFields = "No.", "Seminar No.";
            column(No_; "No.")
            {
                IncludeCaption = true;
            }
            column(Seminar_No_; "Seminar No.")
            {
                IncludeCaption = true;
            }
            column(Seminar_Name_; "Seminar Name")
            {
                IncludeCaption = true;
            }
            column(Starting_Date_; "Starting Date")
            {
                IncludeCaption = true;
            }
            column(Duration_; Duration)
            {
                IncludeCaption = true;
            }
            column(Instructor_Name_; "Instructor Name")
            {
                IncludeCaption = true;
            }
            column(Room_Name_; "Room Name")
            {
                IncludeCaption = true;
            }
            dataitem(SeminarRegistrationLine; "CSD Seminar Registration Line")
            {
                DataItemTableView = sorting ("Document No.", "Line No.");
                DataItemLink = "Document No." = field ("No.");

                column(Bill_to_Customer_No_; "Bill-to Customer No.")
                {
                    IncludeCaption = true;
                }
                column(Participant_Contact_No_; "Participant Contact No.")
                {
                    IncludeCaption = true;
                }
                column(Participant_Name_; "Participant Name")
                {
                    IncludeCaption = true;
                }

            }
            dataitem("Company Information"; "Company Information")
            {
                column(Company_Name_; Name)
                {
                    IncludeCaption = true;
                }
            }
        }
    }

    labels
    {
        SeminarRegistrationHeaderCap = 'Seminar Registration List';
    }
}
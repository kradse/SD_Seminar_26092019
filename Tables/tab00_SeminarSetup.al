table 50100 "CSD Seminar Setup"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(10; "Primary key"; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(20; "Seminar Nos."; Code[20])
        {
            TableRelation = "No. Series";
            DataClassification = ToBeClassified;
        }
        field(30; "Seminar Registation Nos."; Code[20])
        {
            TableRelation = "No. Series";
            DataClassification = ToBeClassified;
        }
        field(40; "Posted Registation Reg Nos."; Code[20])
        {
            TableRelation = "No. Series";
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Primary key")
        {
            Clustered = true;
        }
    }
}
codeunit 50102 "CSD SeminarRegPrinted"
{
    //   Chapter 9 - Lab 1-2     
    //     - Added Codeuni
    TableNo = "CSD Seminar Reg. Header";
    trigger OnRun()
    begin
        Find();
        "No. Printed" += 1;
        Modify();
        Commit();
    end;
}
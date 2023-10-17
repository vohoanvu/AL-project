page 50101 "WMS Location List"
{
    PageType = List;
    SourceTable = "WMS Location";
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Building Code"; Rec."Building Code")
                {
                    ApplicationArea = All;
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;
                }
                field("Parent Location No."; Rec."Parent Location No.")
                {
                    ApplicationArea = All;
                }
                field("Zone Code"; Rec."Zone Code")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    // actions
    // {
    //     area(processing)
    //     {
    //         action("New Location")
    //         {
    //             ApplicationArea = All;
    //             Image = NewDocument;
    //             Promoted = true;
    //             PromotedCategory = New;
    //             TriggerOnAction = 
    //             BEGIN
    //                 // Logic for creating a new Location record
    //                 Rec.INIT;
    //                 PAGE.RUNMODAL(PAGE::"Location Card", Rec);
    //                 CurrPage.UPDATE;
    //             END;
    //         }

    //         action("Edit Location")
    //         {
    //             ApplicationArea = All;
    //             Image = EditDocument;
    //             Promoted = true;
    //             PromotedCategory = Process;
    //             TriggerOnAction = BEGIN
    //                 // Logic for editing the selected Location record
    //                 PAGE.RUNMODAL(PAGE::"Location Card", Rec);
    //                 CurrPage.UPDATE;
    //             END;
    //         }

    //         // ... Add other actions as needed.
    //     }
    // }
}

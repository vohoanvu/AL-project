page 50103 "Location_List"
{
    PageType = List;
    SourceTable = WMS_Location;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Building Code"; Rec."Building Code")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Parent Location No."; Rec."Parent Location No.")
                {
                    ApplicationArea = All;
                }
                // ... Add other fields as needed.
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("New Location")
            {
                ApplicationArea = All;
                Image = NewDocument;
                Promoted = true;
                PromotedCategory = New;
                TriggerOnAction = 
                BEGIN
                    // Logic for creating a new Location record
                    Rec.INIT;
                    PAGE.RUNMODAL(PAGE::"Location Card", Rec);
                    CurrPage.UPDATE;
                END;
            }

            action("Edit Location")
            {
                ApplicationArea = All;
                Image = EditDocument;
                Promoted = true;
                PromotedCategory = Process;
                TriggerOnAction = BEGIN
                    // Logic for editing the selected Location record
                    PAGE.RUNMODAL(PAGE::"Location Card", Rec);
                    CurrPage.UPDATE;
                END;
            }

            // ... Add other actions as needed.
        }
    }
}

page 50104 "Location Card"
{
    PageType = Card;
    SourceTable = WMS_Location;
    ApplicationArea = All;
    Permissions =
        tabledata WMS_Location = RIMD;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Building Code"; Rec."Building Code")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec."Name")
                {
                    ApplicationArea = All;
                }
                field("Parent Location No."; Rec."Parent Location No.")
                {
                    ApplicationArea = All;
                }
                // ... Add other fields as needed.
            }
        }
    }
}

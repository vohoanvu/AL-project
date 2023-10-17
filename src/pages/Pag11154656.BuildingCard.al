page 11154656 BuildingCard
{
    ApplicationArea = All;
    Caption = 'BuildingCard';
    PageType = Card;
    SourceTable = "WMS Building";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';

                field("Code"; Rec."Code")
                {
                    ToolTip = 'Specifies the value of the Code field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field("Default Receipt Location No"; Rec."Default Receipt Location No")
                {
                    ToolTip = 'Specifies the value of the Default Receipt Location No field.';
                }
                field("Default Shipment Location No"; Rec."Default Shipment Location No")
                {
                    ToolTip = 'Specifies the value of the Default Shipment Location No field.';
                }
                field("EAN Code"; Rec."EAN Code")
                {
                    ToolTip = 'Specifies the value of the EAN Code field.';
                }

                field("Address No"; Rec."Address No")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}

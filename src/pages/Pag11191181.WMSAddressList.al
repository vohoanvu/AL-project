page 11191181 "WMS Address List"
{
    ApplicationArea = All;
    Caption = 'WMS Address List';
    PageType = List;
    SourceTable = "WMS Address";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Address; Rec.Address)
                {
                    ToolTip = 'Specifies the value of the Address field.';
                }
                field("Address 2"; Rec."Address 2")
                {
                    ToolTip = 'Specifies the value of the Address 2 field.';
                }
                field(City; Rec.City)
                {
                    ToolTip = 'Specifies the value of the City field.';
                }
                field("Phone No"; Rec."Phone No")
                {
                    ToolTip = 'Specifies the value of the Phone No field.';
                }
                field("No. Series"; Rec."No. Series")
                {
                    ToolTip = 'Specifies the value of the No. Series field.';
                }
                field("Post Code"; Rec."Post Code")
                {
                    ToolTip = 'Specifies the value of the Post Code field.';
                }
                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ToolTip = 'Specifies the value of the Country/Region Code field.';
                }
                field("Country/Region Name"; Rec."Country/Region Name")
                {
                    ToolTip = 'Specifies the value of the Country/Region Name field.';
                }
                field("E-Mail"; Rec."E-Mail")
                {
                    ToolTip = 'Specifies the value of the E-Mail field.';
                }
                field("EAN Code"; Rec."EAN Code")
                {
                    ToolTip = 'Specifies the value of the EAN Code field.';
                }
                field("Customer No"; Rec."Customer No")
                {
                    ToolTip = 'Specifies the value of the Customer No field.';
                }
                field("Status Code"; Rec."Status Code")
                {
                    ToolTip = 'Specifies the value of the Status Code field.';
                }
                field(Blocked; Rec.Blocked)
                {
                    ToolTip = 'Specifies the value of the Blocked field.';
                }
            }
        }
    }
}

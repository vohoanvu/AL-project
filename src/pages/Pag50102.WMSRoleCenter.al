page 50102 "WMS Role Center"
{
    ApplicationArea = All;
    Caption = 'WMS Role Center';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Headline RC Business Manager")
            {
                ApplicationArea = Basic, Suite;
            }
        }
    }

    actions
    {
        area(Sections)
        {
            group("WMS DL System Configurations")
            {
                action("&WMS Address")
                {
                    ApplicationArea = All;
                    RunObject = page "WMS Address List";
                }
                action("WMS Building")
                {
                    ApplicationArea = All;
                    RunObject = page "WMS BuildingList";
                }
                action("WMS Location")
                {
                    ApplicationArea = Basic, Suite;
                    RunObject = page "WMS Location List";
                }
            }
        }

        area(Creation)
        {
            action("&WMS Location")
            {
                ApplicationArea = Basic, Suite;
                RunObject = page "LocationCard";
                RunPageMode = Create;
            }
            action("New WMS Address")
            {
                ApplicationArea = Basic, Suite;
                RunObject = page "WMS Address List";
                RunPageMode = Create;
            }
        }

        area(Processing)
        {

        }

        area(Reporting)
        {

        }

        area(Embedding)
        {
            action(Settings)
            {
                ApplicationArea = Basic, Suite;
                RunObject = page "Entity NoSeries Configuration";
            }
        }
    }
}

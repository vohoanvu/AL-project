table 50101 "WMS Building"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Code"; Code[10])
        {
            DataClassification = ToBeClassified;
            Description = 'Building code which will be used on wms document headers.';
        }

        field(10; "Name"; Text[30])
        {
            DataClassification = ToBeClassified;
            Description = 'Full name of building.';
        }

        // field(11; "Address No."; Code[20])
        // {
        //     DataClassification = ToBeClassified;
        //     TableRelation = "WMS Address";
        //     Description = 'Adres code from building.';
        // }

        field(20; "Default Receipt Location No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = WMS_Location;
            Description = 'Default inbound location.';
        }

        field(21; "Default Shipment Location No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = WMS_Location;
            Description = 'Default outbound location.';
        }

        field(22; "Default Prod. Location No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = WMS_Location;
        }

        field(24; "Availability Restriction"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Per Vestiging";
        }

        field(25; "Pick Locations Unique"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Vestiging.Locatie";
        }

        field(26; "Create Pre-Pick"; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "Altijd";
        }

        // ... Additional fields here ...

        field(90; "Created Date/Time"; DateTime)
        {
            DataClassification = ToBeClassified;
            Description = 'Date and time when the building is created.';
        }

        field(91; "Created User ID"; Text[65])
        {
            DataClassification = ToBeClassified;
            Description = 'User who created the building.';
        }

        field(92; "Modified Date/Time"; DateTime)
        {
            DataClassification = ToBeClassified;
            Description = 'Date and time when the building is modified.';
        }

        field(93; "Modified User ID"; Text[65])
        {
            DataClassification = ToBeClassified;
            Description = 'User who made the last modification to the building.';
        }

        // ... System related fields ...

        field(200; "$systemId"; GUID)
        {
            DataClassification = ToBeClassified;
            Description = 'Unique ID number of the input, generated from the SQL server.';
        }

        // ... Additional system related fields here ...
    }

    keys
    {
        key(PK; "Code")
        {
            Clustered = true;
        }
    }

    // Any triggers or business logic can be added here
}
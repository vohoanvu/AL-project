table 11172953 "Fuel Clause Header"
{
    Caption = 'Fuel Clause Header';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            Editable = false;
        }
        field(10; "WMS Service No."; Code[20])
        {
            Caption = 'WMS Service No.';
            NotBlank = true;
            TableRelation = "WMS Service";

            trigger OnValidate()
            var
                RelatedService: Record "WMS Service";
            begin
                RelatedService.Reset();
                if RelatedService.Get("WMS Service No.") then
                    Rec."Service Description" := RelatedService.Description;
            end;
        }
        field(12; "Relation Source Type"; Option)
        {
            Caption = 'Relation Source Type';
            OptionMembers = Customer,"All Customers";
            NotBlank = true;
        }
        field(13; "Relation Source No."; Code[20])
        {
            Caption = 'Relation Source No.';
            NotBlank = true;
            TableRelation = Customer."No.";

            trigger OnValidate()
            var
                RelatedCustomer: Record Customer;
            begin
                RelatedCustomer.Reset();
                if RelatedCustomer.Get("Relation Source No.") then Rec.Name := RelatedCustomer.Name;
            end;
        }
        field(14; Name; Text[100])
        {
            Caption = 'Name';
            Editable = false;
        }
        field(16; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "Unit of Measure".Code;
        }
        field(17; "Service Description"; Text[50])
        {
            Caption = 'Service Description';
            NotBlank = true;
            Editable = false;
        }
        field(19; "No. Series"; Code[20])
        {
            Caption = 'System No. Series ID';
            TableRelation = "No. Series";

            trigger OnValidate()
            var
                numberSeriesConfig: Record EntityNoSeriesConfig;
                NoSeriesManager: Codeunit NoSeriesManagement;
            begin
                if Rec."No." = '' then begin
                    numberSeriesConfig.Get();
                    NoSeriesManager.InitSeries(
                        numberSeriesConfig."WMS Generated Series Number",
                        numberSeriesConfig."WMS Generated Series Number",
                        WorkDate(),
                        Rec."No.",
                        numberSeriesConfig."WMS Generated Series Number");
                end;
            end;
        }
        field(21; "Quantity Calculation"; Code[20])
        {
            Caption = 'Contract Quantity Calculation';
            NotBlank = true;
            TableRelation = "TMS Agreement Qty. Calc.";
        }
        field(22; "Rounding Type Quantity"; Option)
        {
            Caption = 'Rounding Type Quantity';
            OptionMembers = "No Rounding","Round up","Round down";
            NotBlank = true;
        }
        field(24; "Invoice Type Code"; Code[20])
        {
            Caption = 'Invoice Type Code';
            TableRelation = "WMS Invoice Type";
            NotBlank = true;
        }
        field(82; "Table Filter"; TableFilter)
        {
            Caption = 'Table Filter';
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        NoSeriesRec: Record "No. Series";
    begin
        if Rec."No. Series" = '' then begin
            if NoSeriesRec.GET('TMS_FUEL') then begin
                Rec."No. Series" := NoSeriesRec.Code;
            end;
        end;

        Rec.SystemCreatedBy := UserId;
        Rec.SystemCreatedAt := CurrentDateTime();
    end;
}

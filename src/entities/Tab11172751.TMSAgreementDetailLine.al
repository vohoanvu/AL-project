table 11172751 "TMS Agreement Detail Line"
{
    Caption = 'TMS Agreement Detail Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(2; "Contract No."; Code[20])
        {
            Caption = 'Contract No.';
            TableRelation = "Contract Header"."No.";

            trigger OnValidate()
            var
                contractHeader: Record "Contract Header";
            begin
                contractHeader.Reset();
                if not contractHeader.Get(Rec."Contract No.") then begin
                    Error('The contract number %1 does not exist in the Contract Header table.', Rec."Contract No.");
                end else begin
                    Rec."Relation Source No." := contractHeader."Relation Source No.";
                    Rec."Relation Source Type" := contractHeader."Relation Source Type";
                end;
            end;
        }
        field(3; "Contract Line No."; Integer)
        {
            Caption = 'Contract Line No.';
            TableRelation = "TMS Agreement Line"."Line No.";

            trigger OnValidate()
            var
                contractLine: Record "TMS Agreement Line";
            begin
                contractLine.Reset();
                if not contractLine.Get(Rec."Contract Line No.") then begin
                    Error('The contract line number %1 does not exist in the TMS Agreement Line table.', Rec."Contract Line No.");
                end
            end;
        }
        field(4; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(10; "Relation Source Type"; Option)
        {
            Caption = 'Relation Source Type';
            OptionMembers = Customer,"All customers","Customer Group";
            TableRelation = "Contract Header"."Relation Source Type";
        }
        field(11; "Relation Source No."; Code[20])
        {
            Caption = 'Relation Source No.';
            TableRelation = "Contract Header"."Relation Source No.";
        }
        field(12; "Service No."; Code[20])
        {
            Caption = 'Service No.';
            NotBlank = true;
            TableRelation = "WMS Service"."No.";

            trigger OnValidate();
            var
                wmsService: Record "WMS Service";
            begin
                wmsService.Reset;
                if not wmsService.Get(Rec."Service No.") then begin
                    Error('This WMS Service number %1 does not exist in the WMS Service table.', Rec."Service No.");
                end else begin
                    Rec."Service Description" := wmsService.Description;
                    Rec."Gen. Prod. Posting Group" := wmsService."Gen. Prod. Posting Group";
                    Rec."VAT Prod. Posting Group" := wmsService."VAT Prod. Posting Group";
                end;
            end;
        }
        field(13; "Service Description"; Text[50])
        {
            Caption = 'Service Description';
            Editable = false;
        }
        field(14; "Price per Quantity"; Decimal)
        {
            Caption = 'Price per Quantity';
        }
        field(15; "Rounding Type Quantity"; Option)
        {
            Caption = 'Rounding Type Quantity';
            OptionMembers = "no rounding","round up","round down";
        }
        field(18; "Gen. Prod. Posting Group"; Code[20])
        {
            Caption = 'Gen. Prod. Posting Group ';
            TableRelation = "WMS Service"."Gen. Prod. Posting Group";
            Editable = false;
        }
        field(19; "VAT Prod. Posting Group"; Code[20])
        {
            Caption = 'VAT Prod. Posting Group';
            TableRelation = "WMS Service"."VAT Prod. Posting Group";
            Editable = false;
        }
        field(21; Optional; Boolean)
        {
            Caption = 'Is Optional';
        }
        field(22; "Line type"; Option)
        {
            Caption = 'Line type';
            OptionMembers = "Custody fee","WMS service.";
        }
        field(24; "Quantity Calculation"; Code[20])
        {
            Caption = 'Quantity Calculation';
            TableRelation = "TMS Agreement Qty. Calc.";
        }
        field(28; "Table Filter (Line)"; TableFilter)
        {
            Caption = 'Table Filter (Line)';
        }
        field(29; "Table Filter (Header)"; TableFilter)
        {
            Caption = 'Table Filter (Header)';
        }
        field(30; "Base Amount"; Decimal)
        {
            Caption = 'Base Amount';
            NotBlank = true;
        }
        field(31; "Unit Price"; Decimal)
        {
            Caption = 'Unit Price';
            NotBlank = true;
        }
        field(32; "Unit of Measure Code"; Code[10])
        {
            Caption = 'Unit of Measure Code';
            TableRelation = "WMS Service Unit of Measure".Code;
            NotBlank = true;
        }
        field(37; "Keep zero amount"; Boolean)
        {
            Caption = 'Keep zero amount';
            NotBlank = true;
        }
        field(38; "Cost Component Code"; Code[10])
        {
            Caption = 'Cost Component Code';
        }
        field(42; "Min. amount"; Decimal)
        {
            Caption = 'Min. amount ';
        }
        field(43; "Max. amount"; Decimal)
        {
            Caption = 'Max. amount';
        }
        field(44; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
        }
        field(305; "Invoice Type Code"; Option)
        {
            Caption = 'Invoice Type Code';
            OptionMembers = Paid,Unpaid;
        }
        field(90; "Created Date/Time"; DateTime)
        {
            Caption = 'Created Date/Time';
            Editable = false;
        }
        field(91; "Created User ID"; Text[65])
        {
            Caption = 'Created User ID';
            Editable = false;
        }
        field(92; "Modified Date/Time"; DateTime)
        {
            Caption = 'Modified Date/Time';
            Editable = false;
        }
        field(93; "Modified User ID"; Text[65])
        {
            Caption = 'Modified User ID';
            Editable = false;
        }
    }
    keys
    {
        key(PK; "Contract No.", "Contract Line No.", "Line No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        Rec."Created User ID" := UserId();
        Rec."Created Date/Time" := CurrentDateTime();
    end;

    trigger OnModify()
    begin
        Rec."Modified User ID" := UserId();
        Rec."Modified Date/Time" := CurrentDateTime();
    end;
}

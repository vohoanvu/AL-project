table 11172750 "TMS Agreement Line"
{
    Caption = 'TMS Agreement Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(2; "Contract No."; Code[20])
        {
            Caption = 'Contract No.';
            Editable = false;
            TableRelation = "Contract Header"."No.";

            trigger OnValidate()
            var
                ContractHeader: Record "Contract Header";
            begin
                if not ContractHeader.Get(Rec."Contract No.") then
                    Error('The contract number %1 does not exist in the Contract Header table.', Rec."Contract No.");
            end;
        }
        field(3; "Line No."; Integer)
        {
            Caption = 'Line No.';
            Editable = false;
        }
        field(10; "Relation Source Type"; Option)
        {
            Caption = 'Relation Source Type';
            TableRelation = "Contract Header"."Relation Source Type";
            OptionMembers = Customer,Supplier,"Customer Group","Supplier Group","All customers","All Supplier";
        }
        field(11; "Relation Source No."; Code[20])
        {
            Caption = 'Relation Source No.';
            TableRelation = "Contract Header"."Relation Source No.";
        }
        field(80; "Valid From Date"; Date)
        {
            Caption = 'Valid From Date';
            TableRelation = "Contract Header"."Valid From Date";
        }
        field(81; "Valid To Date"; Date)
        {
            Caption = 'Valid To Date';
            TableRelation = "Contract Header"."Valid To Date";
        }
        field(200; "Document Type Filter"; Option)
        {
            Caption = 'Document Type Filter';
            NotBlank = true;
            OptionMembers = Inbound,Outbound,"Val Order";
        }
    }
    keys
    {
        key(PK; "Contract No.", "Line No.")
        {
            Clustered = true;
        }
    }
}

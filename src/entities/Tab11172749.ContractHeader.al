table 11172749 "Contract Header"
{
    Caption = 'Contract Header';
    DataClassification = ToBeClassified;

    fields
    {
        field(2; "No."; Code[20])
        {
            Caption = 'PK No.';
            Editable = false;
        }
        field(10; "Relation Source Type"; Option)
        {
            Caption = 'Relation Source Type';
            OptionMembers = Customer,"All customers","Customer Group";
            NotBlank = true;
        }
        field(11; "Relation Source No."; Code[20])
        {
            Caption = 'Relation Source No.';
            NotBlank = true;
            TableRelation = Customer."Primary Contact No.";

            trigger OnValidate()
            var
                RelatedCustomer: Record Customer;
            begin
                RelatedCustomer.Reset();
                if RelatedCustomer.Get("Relation Source No.") then begin
                    Rec.Name := RelatedCustomer.Name;
                    Rec.Address := RelatedCustomer.Address;
                    Rec."Address 2" := RelatedCustomer."Address 2";
                    Rec."Post Code" := RelatedCustomer."Post Code";
                    Rec."Country Code" := RelatedCustomer."Country/Region Code";
                    Rec.City := RelatedCustomer.City;
                    Rec."Phone No." := RelatedCustomer."Phone No.";
                    Rec.Contact := RelatedCustomer.Contact;
                end;
            end;
        }
        field(13; Description; Text[50])
        {
            Caption = 'Description';
        }
        field(16; "Document Date"; Date)
        {
            Caption = 'Document Date';
        }
        field(18; "Template Type"; Code[20])
        {
            Caption = 'Template Type';
        }
        field(22; "Valid From Date"; Date)
        {
            Caption = 'Valid From Date';
            NotBlank = true;
        }
        field(23; "Valid To Date"; Date)
        {
            Caption = 'Valid To Date';
            NotBlank = true;
        }
        field(24; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code';
            TableRelation = Currency.Code;
        }
        field(30; Name; Text[100])
        {
            Caption = 'Name';
            Editable = false;
        }
        field(32; Address; Text[100])
        {
            Caption = 'Address';
            Editable = false;
        }
        field(33; "Address 2"; Text[50])
        {
            Caption = 'Address 2';
            Editable = false;
        }
        field(34; "Post Code"; Code[20])
        {
            Caption = 'Post Code';
            Editable = false;
        }
        field(35; "Country Code"; Code[10])
        {
            Caption = 'Country Code';
            Editable = false;
        }
        field(36; City; Text[30])
        {
            Caption = 'City';
            Editable = false;
        }
        field(38; "Phone No."; Text[30])
        {
            Caption = 'Phone No.';
            Editable = false;
        }
        field(39; Contact; Text[100])
        {
            Caption = 'Contact';
            Editable = false;
        }
        field(50; "No. Series"; Code[20])
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
        field(82; "Table Filter"; TableFilter)
        {
            Caption = 'Table Filter';
        }
        field(84; "Fuel Clause"; Code[20])
        {
            Caption = 'Fuel Clause';
            TableRelation = "Fuel Clause Header";
            NotBlank = true;
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
        numberSeriesConfig: Record EntityNoSeriesConfig;
        NoSeriesManager: Codeunit NoSeriesManagement;
        NoSeriesRec: Record "No. Series";
        TMSAgreementLine: Record "TMS Agreement Line";
        LineNoSeries: Code[20];
        LineNo: Integer;
    begin
        if Rec."No. Series" = '' then begin
            if NoSeriesRec.GET('TMS_CONTR') then begin
                Rec."No. Series" := NoSeriesRec.Code;
            end;
        end;

        // Insert a corresponding record into the TMS Agreement Line table
        // TMSAgreementLine.Init();
        // TMSAgreementLine."Contract No." := Rec."No.";
        // Use the No. Series functionality to generate the Line No.
        // LineNoSeries := 'TMS_LINE'; // Replace with your actual No. Series for line numbers
        // Evaluate(LineNo, NoSeriesManager.GetNextNo(LineNoSeries, WorkDate(), true));
        // TMSAgreementLine."Line No." := LineNo;
        // TMSAgreementLine.Insert();
    end;
}

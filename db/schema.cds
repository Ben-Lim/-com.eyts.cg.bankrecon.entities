namespace ZCG_HANA_DATA_RECON;

using { managed } from '@sap/cds/common';

entity ZPOS_Training{
    key POSUniqueID: String(20);
    key MerchantID: String(10);
    key TerminalID:String(10);
    Date: Date;
    Amount: Decimal(13,2);

}

entity ZMerchant_Training{
    key MerchantUniqueID: String(20);
    key MerchantID: String(10);
    key TerminalID:String(10);
    Date: Date;
    Amount: Decimal(13,2);

}

entity ZOutput_Training{
    key POSUniqueID: String(20);
    key MerchantUniqueID: String(20);
    key MerchantID: String(10);
    key TerminalID:String(10);
    PDate: Date;
    PAmount: Decimal(13,2);
    MDate: Date;
    MAmount: Decimal(13,2);
    Status: Boolean;

}

entity ZRecon_AI{
    MerchantName: String(50);
    key MerchantId: String(10) not null;
    key Status: String(15) not null;
    key EDCTerminalNo: String(10) not null;
    key SettlementDate: Date not null;
    EDCBatchNo: String(10);
    StatementBatchNo: String(10);
    key CardNoTransID: String(25) not null;
    key TransDate: Date not null;
    key TransTime: Time not null;
    ApprovalCode: String(10);
    TransAmount: String(10);
   	MDRRate: String(10);
  	DiscAmount: String(10);
   	NettAmount: String(10);
	CardBrand: String(20);
 	InterchangeFeeCode: String(10);
    RPPID: String(10);
    InstitutionName: String(50);
    AccountType: String(10);
    Name: String(10);
    MerchantTransactionID: String(10);

}

entity ZExceptionHandlerRpt{
    key MerchantId: String(10) not null;
    MerchantName: String(50);
    key TransactionID : String(15) not null;
    key Type : String(50) not null; 
    key Refno : String(15) not null;
    key SKU : String(15) not null;
    key Product : String(15) not null;
    key Location : String(15) not null; 
    key SalesDate : Date not null;
    Status : String(15);
    info: String(50);
    key Paymentmethod : String(50) not null;
    Quantity : Integer;
    GrossSales : Decimal(13,2);
    Discount : Decimal(5,2);
    NetAmount : Decimal(13,2) not null;

    key EDCTerminalNo: String(10) not null;
    key SettlementDate: Date not null;
    EDCBatchNo: String(10);
    StatementBatchNo: String(10);
    key CardNoTransID: String(25) not null;
    key TransDate: Date not null;
    key TransTime: Time not null;
    ApprovalCode: String(10);
    TransAmount: String(10);
   	MDRRate: String(10);
  	DiscAmount: String(10);
   	NettAmount: String(10);
	CardBrand: String(20);
 	InterchangeFeeCode: String(10);
    RPPID: String(10);
    InstitutionName: String(50);
    AccountType: String(10);
    Name: String(10);
    MerchantTransactionID: String(10);
}

entity ZPOS{
    key TransactionId : String(15) not null;
    key MerchantId: String(10) not null;
    key Type : String(50) not null; 
    key Refno : String(15) not null;
    key SKU : String(15) not null;
    key Product : String(15) not null;
    key Location : String(15) not null; 
    key SalesDate : Date not null;
    Status : String(15);
    info: String(50);
    key Paymentmethod : String(50) not null;
    Quantity : Integer;
    GrossSales : Decimal(13,2);
    Discount : Decimal(5,2);
    NetAmount : Decimal(13,2) not null;
    
}


entity ZMerchant{
    MerchantName: String(50);
    key MerchantId: String(10) not null;
    key EDCTerminalNo: String(10) not null;
    key SettlementDate: Date not null;
    EDCBatchNo: String(10);
    StatementBatchNo: String(10);
    key CardNoTransID: String(25) not null;
    key TransDate: Date not null;
    key TransTime: Time not null;
    ApprovalCode: String(10);
    TransAmount: String(10);
   	MDRRate: String(10);
  	DiscAmount: String(10);
   	NettAmount: String(10);
	CardBrand: String(20);
 	InterchangeFeeCode: String(10);
    RPPID: String(10);
    InstitutionName: String(50);
    AccountType: String(10);
    Name: String(10);
    MerchantTransactionID: String(10);

};

entity ZBank {
    key AccountNumber: String(25) not null;
    key RecordSequenceNumber: String(15) not null;
    key TransactionDate: Date not null;
    key TransactionCode: String(15) not null;
    TransactionCodeDescription: String(50);
    OriginatingBranchCode: String(15);
    DocumentReferenceNumber: String(15);
    key TransactionAmount: Decimal(13,2) not null;
    key TransactionAmountType: String(15) not null;
    Balance: Decimal(13,2);
    BalanceType: String(15);
    TransactionTime: Time;
    CustomerReference: String(15);
    Filler: String(15);
    RecordType: String(15);
    RecipientReference: String(25);
    OtherPaymentDetails: String(50);
    SenderName: String(50);

};
entity ZNonBank{
    key Date: DateTime not null;
    TransactionType: String(15);
    Description: String(150);
    Key OrderID: String(25) not null;
    MoneyDirection: String(25);
    Amount: Decimal(13,2);
    Status: String(50);
    BalanceAfterTransactions: Decimal(13,2);

}

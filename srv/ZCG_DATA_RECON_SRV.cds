using ZCG_HANA_DATA_RECON from '../db/schema';

using {sap} from '@sap/cds-common-content';

service CG_DATA_RECON_SRV {
    entity POS      as projection on ZCG_HANA_DATA_RECON.ZPOS;
    entity Merchant as projection on ZCG_HANA_DATA_RECON.ZMerchant;
    entity Bank     as projection on ZCG_HANA_DATA_RECON.ZBank;
    entity NonBank  as projection on ZCG_HANA_DATA_RECON.ZNonBank;
    entity Recon_AI as projection on ZCG_HANA_DATA_RECON.ZRecon_AI;
    entity POS_Training as projection on ZCG_HANA_DATA_RECON.ZPOS_Training;
    entity Merchant_Training as projection on ZCG_HANA_DATA_RECON.ZMerchant_Training;
    entity Output_Training as projection on ZCG_HANA_DATA_RECON.ZOutput_Training;
}

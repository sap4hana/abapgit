@EndUserText.label : 'VBAP Sales Document Items'
@AbapCatalog.enhancementCategory : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #LIMITED
define table zvbap {
  key mandt : abap.clnt not null;
  key vbeln : abap.char(10) not null;
  key posnr : abap.numc(6) not null;
  matnr     : abap.char(40);
  matwa     : abap.char(40);
  pmatn     : abap.char(40);
  charg     : abap.char(10);
  matkl     : abap.char(9);
  arktx     : abap.char(40);
  pstyv     : abap.char(4);
  posa1     : abap.char(4);
  abgru     : abap.char(2);
  uepos     : abap.numc(6);
  grpos     : abap.numc(6);
  werks     : abap.char(4);
  lgort     : abap.char(4);
  lgnum     : abap.char(3);
  lgtyp     : abap.char(3);
  @Semantics.quantity.unitOfMeasure : 'zvbap.vrkme'
  lfimg     : abap.quan(13,3);
  vrkme     : abap.unit(3);
  meins     : abap.unit(3);
  umvkz     : abap.dec(5,0);
  umvkn     : abap.dec(5,0);
  @Semantics.quantity.unitOfMeasure : 'zvbap.gewei'
  brgew     : abap.quan(15,3);
  @Semantics.quantity.unitOfMeasure : 'zvbap.gewei'
  ntgew     : abap.quan(15,3);
  gewei     : abap.unit(3);
  @Semantics.quantity.unitOfMeasure : 'zvbap.voleh'
  volum     : abap.quan(15,3);
  voleh     : abap.unit(3);
  route     : abap.char(6);
  vstel     : abap.char(4);
  erdat     : abap.dats;
  ernam     : abap.char(12);
  erzet     : abap.tims;
  waerk     : abap.cuky;
  @Semantics.amount.currencyCode : 'zvbap.waerk'
  netwr     : abap.curr(15,2);
  @Semantics.amount.currencyCode : 'zvbap.waerk'
  mwsbp     : abap.curr(13,2);
  @Semantics.amount.currencyCode : 'zvbap.waerk'
  kzwi1     : abap.curr(15,2);
  @Semantics.amount.currencyCode : 'zvbap.waerk'
  kzwi2     : abap.curr(15,2);
  @Semantics.amount.currencyCode : 'zvbap.waerk'
  kzwi3     : abap.curr(15,2);
  @Semantics.amount.currencyCode : 'zvbap.waerk'
  kzwi4     : abap.curr(15,2);
  @Semantics.amount.currencyCode : 'zvbap.waerk'
  kzwi5     : abap.curr(15,2);
  @Semantics.amount.currencyCode : 'zvbap.waerk'
  kzwi6     : abap.curr(15,2);
  kostl     : abap.char(10);
  prctr     : abap.char(10);
  kunnr     : abap.char(10);
  vgbel     : abap.char(10);
  vgpos     : abap.numc(6);
  aubel     : abap.char(10);
  aupos     : abap.numc(6);
  fkrel     : abap.char(1);
  absta     : abap.char(1);
  gbsta     : abap.char(1);
  lfsta     : abap.char(1);
  fksaa     : abap.char(1);

}

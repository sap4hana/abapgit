@EndUserText.label : 'ZVBAK'
@AbapCatalog.enhancementCategory : #NOT_EXTENSIBLE
@AbapCatalog.tableCategory : #TRANSPARENT
@AbapCatalog.deliveryClass : #A
@AbapCatalog.dataMaintenance : #LIMITED
define table zvbak {
  key mandt : abap.clnt not null;
  key vbeln : abap.char(10) not null;
  erdat     : abap.dats;
  erzet     : abap.tims;
  ernam     : abap.char(12);
  angdt     : abap.dats;
  bnddt     : abap.dats;
  audat     : abap.dats;
  vbtyp     : abap.char(1);
  auart     : abap.char(4);
  augru     : abap.char(3);
  vkorg     : abap.char(4);
  vtweg     : abap.char(2);
  spart     : abap.char(2);
  vkgrp     : abap.char(3);
  vkbur     : abap.char(4);
  gsber     : abap.char(4);
  gbstk     : abap.char(1);
  lfstk     : abap.char(1);
  fkstk     : abap.char(1);
  kunnr     : abap.char(10);
  kunag     : abap.char(10);
  waerk     : abap.cuky;
  @Semantics.amount.currencyCode : 'zvbak.waerk'
  netwr     : abap.curr(15,2);
  knumv     : abap.char(10);
  bstnk     : abap.char(20);
  bstdk     : abap.dats;
  ihrez     : abap.char(12);
  inco1     : abap.char(3);
  inco2     : abap.char(28);
  zterm     : abap.char(4);
  vsbed     : abap.char(2);
  faksk     : abap.char(2);
  lifsk     : abap.char(2);
  kunnr_alt : abap.char(10);

}

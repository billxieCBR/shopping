using { Currency, managed, sap } from '@sap/cds/common';
namespace sap.capire.shopping;

entity Goods : managed {
    key ID : Integer;
    name       : String(100);
    price        : String(15);
    pieces       : String(15);
    vat      : String(15);
    type : String(15);
    supermarket : String(15);
}


/**
entity Authors : managed {
  key ID : Integer;
  name   : String(111);
  dateOfBirth  : Date;
  dateOfDeath  : Date;
  placeOfBirth : String;
  placeOfDeath : String;
  books  : Association to many Books on books.author = $self;
}

 */

/** Hierarchically organized Code List for Genres */

/** 
entity Genres : sap.common.CodeList {
  key ID   : Integer;
  parent   : Association to Genres;
  children : Composition of many Genres on children.parent = $self;
}

*/
cds 
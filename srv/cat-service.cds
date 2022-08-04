using { sap.capire.shopping as my } from '../db/schema';
service CatalogService @(path:'/browse') {

  /** For displaying lists of Books */
@readonly entity ListOfGoods as projection on Goods;

@readonly entity Goods as projection on my.Goods {*} excluding { createdBy, modifiedBy };

}



  /** For display in details pages */
/** 

  @readonly entity  as projection on my.Goods { *,
    author.name as author
  } excluding { createdBy, modifiedBy };

  @requires: 'authenticated-user'
  action submitOrder ( book: Books:ID, quantity: Integer ) returns { stock: Integer };
  event OrderedBook : { book: Books:ID; quantity: Integer; buyer: String };

*/



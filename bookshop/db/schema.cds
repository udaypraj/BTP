namespace sap.learning.bookshop;
using { managed, Currency, sap } from '@sap/cds/common';

entity Books: managed {
    key ID: Integer;
    title: localized String(100);
    descr: localized String(1000);
    author: Association to Authors;
    genre: Association to Genres;
    stock: Integer;
    price: Decimal(9,2);
    currency: Currency;
}

entity Authors: managed {
    key ID: Integer;
    name: String(111);
    books: Association to many Books on books.author = $self;
}

entity Genres : sap.common.CodeList {
    key ID: Integer;
    parent: Association to Genres;
    children: Composition of many Genres on children.parent = $self;
}
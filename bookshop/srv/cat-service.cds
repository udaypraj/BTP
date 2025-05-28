using {sap.learning.bookshop as db} from '../db/schema';

service CatalogService @(path:'/browse') {
    
    @readonly entity Books as select from db.Books{
        *,
        author.name as author
    } excluding {createdBy, modifiedBy};

    @requires: 'authenticated-user'
    action submitOrder(books: Books:ID, quantity: Integer)
}
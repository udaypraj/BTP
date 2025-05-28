using {sap.learning.bookshop as db} from '../db/schema';

service AdminService @(requires: 'authenitcated-user'){
    entity Books as projection on db.Books;
    entity Author as projection on db.Authors;
}
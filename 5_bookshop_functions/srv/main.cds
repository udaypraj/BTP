using {btp.learning.db as db} from '../db/schema';

service bookshop {
    entity Books as projection on db.Books;
    entity Authors as projection on db.Authors;
}
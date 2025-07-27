using btp1 from '../db/schema';
service bookshop {
    entity Books as projection on btp1.Books;
    entity Authors as projection on btp1.Authors;
    entity Orders as projection on btp1.Orders;
}
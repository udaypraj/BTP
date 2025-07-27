namespace btp1;

using cuid from '@sap/cds/common';

entity Books : cuid {
    title  : String;
    author : Association to Authors;
}

entity Authors : cuid {
    name  : String;
    books : Association to many Books
                on books.author = $self;
}

// entity Orders: cuid {
//     comments: String;
//     Items: Composition of many OrderItems on Items.parent = $self;
// }

// entity OrderItems {
//     key parent: Association to Orders;
//     key pos: String;
//     quant: Integer;
//     books: Association to Books;
// }

entity Orders: cuid {
    comments: String;
    Items: Composition of many {
        key pos: String;
        quant: Integer;
        books: Association to Books;
    }
}

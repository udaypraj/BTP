using {cuid, managed, Country} from '@sap/cds/common';
service bookshop {
    entity Books: cuid, managed {
        title: String;
    }
    entity Author: cuid {
        name: String;
        countryOfBirth: Country;
    }
}
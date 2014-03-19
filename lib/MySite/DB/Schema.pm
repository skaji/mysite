package MySite::DB::Schema;
use strict;
use warnings;
use utf8;
use Teng::Schema::Declare;

table {
    name 'user';
    pk 'id';
    columns qw(id name);
    row_class 'MySite::DB::Row::User';
};

table {
    name 'item';
    pk 'id';
    columns qw(id name user_id created_at updated_at);
    row_class 'MySite::DB::Row::Item';
};

1;

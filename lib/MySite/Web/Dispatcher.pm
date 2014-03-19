package MySite::Web::Dispatcher;
use strict;
use warnings;
use utf8;
use Amon2::Web::Dispatcher::RouterBoom;

get '/' => sub {
    my $c = shift;
    $c->render('index.tx');
};
get '/xs' => sub {
    my $c = shift;
    $c->render('xs.tx');
};
get '/ip' => sub {
    my $c = shift;
    $c->render_text($c->req->address);
};


1;

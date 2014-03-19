requires 'Amon2';
requires 'DBD::SQLite';
requires 'HTML::FillInForm::Lite';
requires 'HTTP::Session2';
requires 'JSON';
requires 'JSON::XS';
requires 'Module::Functions';
requires 'Plack::Middleware::ReverseProxy';
requires 'Router::Boom';
requires 'Starlet';
requires 'Teng';
requires 'Text::Xslate';

requires 'Plack::Middleware::AccessLog::RotateLogs', 0,
    git => 'git://github.com/shoichikaji/Plack-Middleware-AccessLog-RotateLogs.git';
requires 'Amon2::Plugin::Web::Text', 0,
    git => 'git://github.com/shoichikaji/Amon2-Plugin-Web-Text.git';
requires 'Plack::Middleware::NonPHP', 0,
    git => 'https://github.com/shoichikaji/Plack-Middleware-NonPHP.git';

on test => sub {
    requires 'Test::More', '0.98';
    requires 'Test::Requires';
    requires 'Data::Section::Simple';
};

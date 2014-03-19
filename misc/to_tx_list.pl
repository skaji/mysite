#!/usr/bin/env perl
use strict;
use warnings;
use utf8;
use 5.010;
use FindBin;
use Data::Dumper;

my $file = shift || "$FindBin::Bin/XS.txt";
open my $fh, "<", $file or die "$file: $!";

my %list;
my $current_title = '';
while (my $line = <$fh>) {
    chomp $line;
    next if $line =~ /^\s*$/;
    next if $line =~ /^\s*#/;
    my ($key, $value) = split /\s*:\s*/, $line, 2;
    if ($key eq 'title') {
        $current_title = $value;
        $list{$value} = {};
    } else {
        $list{$current_title}{$key} = $value;
    }
}

print <<'...';
: cascade "layout/main.tx"

: override content -> {

<h1 class="page-header">xs</h1>
...
say "<ul>";
for my $title (sort keys %list) {
    say " " x 4, qq|<li><a href="$list{$title}{url}">$title</a>|, $list{$title}{desc} ? " - $list{$title}{desc}" : "", "</li>";
}
say "</ul>";
print <<'...';
: }
...


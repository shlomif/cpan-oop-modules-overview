#! /usr/bin/env perl
#
# Short description for to-asciidoc.pl
#
# Version 0.0.1
# Copyright (C) 2021 Shlomi Fish < https://www.shlomifish.org/ >
#
# Licensed under the terms of the MIT license.

use strict;
use warnings;
use 5.014;
use autodie;

use Path::Tiny qw/ path tempdir tempfile cwd /;

path("article/summary.asciidoc")->spew_utf8(
    sub {
        my $t = path("article/summary.txt")->slurp_utf8();
        $t =~ s#^( +)([\-\*])#"*" x (1 + length($1)/4)#egms;
        $t =~ s#http://cpan.uwinnipeg.ca/#http://search.cpan.org/#g;
        return $t;
    }
        ->()
);

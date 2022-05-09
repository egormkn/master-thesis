#!/usr/bin/env perl

my $dir = dirname($rc_file);

@include_directories = (
    $dir, 
    $dir . '/itmo-student-thesis//'
);

@default_files = ("*.tex");

$ENV{'TEXINPUTS'} = join($search_path_separator, @include_directories, $ENV{'TEXINPUTS'} // '');
$ENV{'TZ'} = 'Europe/Moscow';
$pdf_mode = 5;
$dvi_mode = $postscript_mode = 0;

do './overleaf.pm';
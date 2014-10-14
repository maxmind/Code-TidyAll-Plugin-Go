package Code::TidyAll::Plugin::Go::Vet;

use strict;
use warnings;

use Capture::Tiny qw(capture_merged);
use Moo;

extends 'Code::TidyAll::Plugin';

sub _build_cmd { 'go vet' }

sub validate_file {
    my ( $self, $file ) = @_;

    my $cmd = join q{ }, $self->cmd, $self->argv, $file;
    my $output = capture_merged { system($cmd) and die "$cmd failed"; };

    die "$output\n" if $output;
}

1;

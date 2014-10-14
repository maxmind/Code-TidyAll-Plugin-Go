package Code::TidyAll::Plugin::Go::Fmt;

use strict;
use warnings;

use Capture::Tiny qw( capture_merged );
use Code::TidyAll::Util qw( write_file );
use Moo;
use Try::Tiny;

extends 'Code::TidyAll::Plugin';

sub _build_cmd { 'gofmt' }

sub transform_file {
    my ( $self, $file ) = @_;

    try {
        my $cmd = join q{ }, $self->cmd, $self->argv, $file;
        my $output = capture_merged { system($cmd) and die "$cmd failed"; };
        write_file( $file, $output );
    }
    catch {
        die sprintf(
            q{%s exited with error - possibly bad arg list '%s'},
            $self->cmd, $self->argv
        );
    };
}

1;

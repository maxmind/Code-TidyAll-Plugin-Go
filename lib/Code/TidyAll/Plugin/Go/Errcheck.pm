package Code::TidyAll::Plugin::Go::Errcheck;

use strict;
use warnings;
use feature qw( say );

use IPC::Run3 qw( run3 );
use Moo;

extends 'Code::TidyAll::Plugin';

sub _build_cmd { 'errcheck' }

sub validate_file {
    my ( $self, $file ) = @_;

    my $argv = $self->argv;
    $argv =~ s{$ENV{GOPATH}/src/}{};

    my $cmd = join q{ }, $self->cmd, $argv;

    my $output;
    run3( $cmd, \undef, \$output, \$output );
    if ( $? > 0 ) {
        $output ||= 'problem running ' . $self->cmd;
        die "$output\n";
    }

}

1;

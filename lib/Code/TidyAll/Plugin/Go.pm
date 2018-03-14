package Code::TidyAll::Plugin::Go;

use strict;
use warnings;

our $VERSION = '0.03';

# ABSTRACT: Provides gofmt and go vet plugins for Code::TidyAll

1;

__END__

=head1 SYNOPSIS

In your F<.tidyallrc> file:

    [Go::Fmt]
    select = **/*.go

    [Go::Vet]
    select = **/*.go

=head1 DESCRIPTION

This distro ships with two Go-related plugins for L<Code::TidyAll>. The
C<Go::Fmt> plugin formats your code with C<gofmt>. The C<Go::Vet> plugin runs
C<go vet> against your code and dies if that command finds anything to
complain about.

=head1 SUPPORT

Please report all issues with this code using the GitHub issue tracker at
L<https://github.com/maxmind/Code-TidyAll-Plugin-Go/issues>.

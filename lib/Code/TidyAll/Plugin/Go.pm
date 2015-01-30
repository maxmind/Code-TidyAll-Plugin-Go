package Code::TidyAll::Plugin::Go;

# ABSTRACT: Provides errcheck, gofmt and go vet plugins for Code::TidyAll

__END__

=head1 SYNOPSIS

In your F<.tidyallrc> file:

    [Go::Errcheck]
    select = ./main.go
    argv = -blank $ROOT/testdata

    [Go::Fmt]
    select = **/*.go

    [Go::Vet]
    select = **/*.go

=head1 DESCRIPTION

This distro ships with three Go-related plugins for L<Code::TidyAll>: one
formatter and two validators. The C<Go::Fmt> plugin formats your code with
C<gofmt>. The C<Go::Errcheck> plugin runs
L<errcheck|https://github.com/kisielk/errcheck> against your code and the
C<Go::Vet> plugin runs C<go vet> against your code.  Both of these validator
plugins will die if their respective commands find anything to complain about.

=head1 SUPPORT

Please report all issues with this code using the GitHub issue tracker at
L<https://github.com/maxmind/Code-TidyAll-Plugin-Go/issues>.

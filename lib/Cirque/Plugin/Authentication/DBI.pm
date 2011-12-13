package Cirque::Plugin::Authentication::DBI;
use strict;
use warnings;
our $VERSION = '0.01';

1;
__END__

=head1 NAME

Cirque::Plugin::Authentication::DBI - Authentication-backend for Cirque

=head1 SYNOPSIS

    $ ln -s cirque-plugin-authentication-dbi/plugins/authentication-dbi path/to/cirque/plugins/
    $ path/to/cirque/bin/cirqued

=head1 DESCRIPTION

Cirque::Plugin::Authentication::DBI is an authentication-backend for Cirque.

=head1 Configuration

See plugins/authentication-dbi/etc/config.pl.

=head1 Database Schema

See plugins/authentication-dbi/misc/cirque_auth.sql.

=head1 Compatible to password-hash

This plugin uses "Authen::Simple" for authentication.

"Authen::Simple" has compatible to password-hashing.

=head1 SEE ALSO

plugins/authentication-dbi/etc/config.pl

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

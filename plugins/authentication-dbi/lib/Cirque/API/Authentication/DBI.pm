package Cirque::API::Authentication::DBI;
use Cirque::Pragmas;
use Mouse;
use Authen::Simple::DBI;

extends 'Cirque::API::Authentication::External';

has dsn => ( is => 'ro', required => 1 );
has statement => ( is => 'ro', isa => 'Str', default => 'SELECT password FROM member WHERE account=?' );
has username => ( is => 'ro' );
has password => ( is => 'ro' );
has attribute => ( is => 'ro' );
has log => ( is => 'ro' );
has dbi => ( is => 'rw' );

sub BUILD {
    my ( $self ) = @_;
    my %args = ();
    for my $key ( qw( dsn statement username password attribute log ) ) {
        if ( defined $self->$key ) {
            $args{$key} = $self->$key;
        }
    }
    $self->dbi( Authen::Simple::DBI->new( %args ) );
}

sub authenticate {
    my ($self, $args) = @_;
    my ( $account, $password ) = ( $args->{email}, $args->{password} );

    my $member;
    if ( $self->dbi->authenticate( $account, $password ) ) {
        $member = {
            last_name    => undef,
            first_name   => undef,
            internal_id  => undef,
            account_id   => undef,
            email        => $account,
            author       => $account,
        };
        $self->initialize_member( $member );
    }

    return $member;
}

no Mouse;

1;

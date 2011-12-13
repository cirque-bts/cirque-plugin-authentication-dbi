Cirque::Plugin->new(
    name => "Authentication-DBI",
    on_register => sub {
        warn "authentication-dbi was loaded";
    },
);

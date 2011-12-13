use inc::Module::Install;
name 'Cirque-Plugin-Authentication-DBI';
all_from 'lib/Cirque/Plugin/Authentication/DBI.pm';

requires 'Cirque';
requires 'Mouse';
requires 'Authen::Simple::DBI';

tests 't/*.t';

test_requires 'Test::More';
WriteAll;

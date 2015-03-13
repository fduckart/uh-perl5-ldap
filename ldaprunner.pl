use strict;
use warnings;
use Net::LDAP;
 
use constant SERVER   => 'ldap.hawaii.edu';
use constant PORT     => 636;
use constant SCHEME   => 'ldaps';

use constant CN         => ''; # <-- Your assigned name goes here.
use constant PASSWORD   => '';  # <-- Your password goes here.
use constant BASEDN     => 'cn='.CN.',ou=Specials,dc=hawaii,dc=edu';
use constant SEARCHBASE => 'dc=hawaii,dc=edu';

my $ldap = Net::LDAP->new(SERVER, scheme => SCHEME, port => PORT)
           or die $@;

my $bound = $ldap->bind(BASEDN, password => PASSWORD);
die $bound->error if $bound->code;
 
my $uid = $ARGV[0]; # UH username.
my $result = $ldap->search(
    base   => SEARCHBASE,
    filter => "(uid=".$uid.")"
);
die $result->error if $result->code;
 
foreach my $entry ($result->entries) {
    $entry->dump;
}

$ldap->unbind;


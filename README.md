uh-perl-ldap
===========

LDAP Perl 5 Demonstration Program

**Overview**

This program demonstrates how to do a simple LDAP search
of the University of Hawaii LDAP service.

Note: You must specify your special DN and its password.<br/>
The example run of the program uses the 'filedrop' special DN,
but the value of the password has been removed from the
checked-in code. The use of the special DN will also require
the ability to pass through the UH firewall.

**Technology**

The program was developed on Apple Mac OS X 10.10.2,
using Perl 5 version 18.

**Verify you have Perl installed**

    $ perl -v

    This is perl 5, version 18, subversion 2 (v5.18.2) built for darwin-thread-multi-2level
    (with 2 registered patches, see perl -V for more detail)
    ...

**Running the Program**

Run the program from the command line:

    $ ./ldaprunner duckart
    vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
    ------------------------------------------------------------------------
    dn:uhEntry=16d4fd0bffd6c91a4e8af1b6642c2cea7dddcc707,ou=People,dc=hawaii,dc=edu

                   objectClass: eduPerson
                                inetOrgPerson
                                organizationalPerson
                                person
                                top
                                uhEduPerson
                        uhUuid: 12345678
                            cn: Francis R Duckart
          eduPersonAffiliation: staff
                eduPersonOrgDN: uhsystem
                     givenName: Francis
                          mail: duckart@hawaii.edu
                                francis.duckart@hawaii.edu
                            sn: Duckart
             uhAcknowledgement: generalConfidentialityNotice=20060101T000000
              uhOrgAffiliation: eduPersonOrgDN=uhsystem,eduPersonAffiliation=staff
                           uid: duckart
                   displayName: Francis Duckart
      facsimileTelephoneNumber: (808) 555-1212
                            ou: University of Hawaii System
                                Information Technology Services, Management Information Systems
    physicalDeliveryOfficeName: Info Tech Ctr, 6th Fl
               telephoneNumber: (808) 555-1212
                         title: Info Tech Spec
    ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


**For More Information**

Contact me via email at duckart@hawaii.edu


package Data::Sah::Value::perl::Firefox::first_local_profile_name;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

sub meta {
    +{
        v => 1,
        summary => 'First local Firefox profile name',
        prio => 50,
        args => {
        },
    };
}

sub value {
    my %cargs = @_;

    my $res = {};

    $res->{modules}{"Firefox::Util::Profile"} //= 0.005;
    $res->{expr_value} = join(
        '',
        'do { ', (
            'my $res = Firefox::Util::Profile::list_firefox_profiles(); ',
            'warn "Cannot list Firefox profiles: $res->[0] - $res->[1]" unless $res->[0] == 200; ',
            '$res->[2][0] ',
        ),
        '}',
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|value)$

=head1 DESCRIPTION

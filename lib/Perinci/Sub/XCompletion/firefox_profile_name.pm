package Perinci::Sub::XCompletion::firefox_profile_name;

use 5.010001;
use strict;
use warnings;

use Complete::Firefox qw(complete_firefox_profile_name);

# AUTHORITY
# DATE
# DIST
# VERSION

our %SPEC;

$SPEC{gen_completion} = {
    v => 1.1,
};
sub gen_completion {
    my %fargs = @_;
    sub {
        my %cargs = @_;
        complete_firefox_profile_name(%cargs, %fargs);
    };
}

1;
# ABSTRACT: Generate completion for Firefox profile name

=head1 SYNOPSIS

=cut

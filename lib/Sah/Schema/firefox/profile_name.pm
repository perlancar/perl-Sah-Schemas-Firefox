package Sah::Schema::firefox::profile_name;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = [str => {
    min_len => 1,
    summary => 'Firefox profile name',
    'x.completion' => 'firefox_profile_name',
    examples => [
        {
            value   => '',
            valid   => 0,
        },
        {
            value   => 'standard',
            valid   => 1,
        },
    ],
}];

1;
# ABSTRACT:

package Sah::Schema::firefox::local_profile_name;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

# TODO: allow selecting local Firefox installation

our $schema = ["firefox::profile_name" => {
    summary => 'Firefox profile name, must exist in local Firefox installation',
    prefilters => ['Firefox::check_profile_name_exists'],
    description => <<'_',

This is like the `firefox::profile_name` schema, but adds a check (in
`prefilter` clause) that the profile must exist in local Firefox installation.

_
    examples => [
        {
            value   => '',
            valid   => 0,
            test    => 0,
        },
        {
            summary => 'Assuming the profile named "default" exists in local Firefox installation',
            value   => 'default',
            valid   => 1,
            test    => 0,
        },
    ],
}];

1;
# ABSTRACT:

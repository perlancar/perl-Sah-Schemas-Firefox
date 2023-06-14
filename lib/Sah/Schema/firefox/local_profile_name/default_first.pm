package Sah::Schema::firefox::local_profile_name::default_first;

use strict;

# AUTHORITY
# DATE
# DIST
# VERSION

our $schema = ["firefox::local_profile_name" => {
    summary => 'Firefox profile name, must exist in local Firefox installation, default to first',
    'x.perl.default_value_rules' => ['Firefox::first_local_profile_name'],
    description => <<'_',

This is like `firefox::local_profile_name` schema, but adds a default value rule
to pick the first profile in the local Firefox installation.

_
    examples => [
        {
            value   => '',
            valid   => 0,
            test    => 0,
        },
        {
            summary => 'Assuming the profile named "default" exists in local Firefox installation and is the first one',
            value   => 'default',
            valid   => 1,
            test    => 0,
        },
    ],
}];

1;
# ABSTRACT:

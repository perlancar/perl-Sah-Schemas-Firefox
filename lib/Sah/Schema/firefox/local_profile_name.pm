package Sah::Schema::firefox::local_profile_name;

# AUTHORITY
# DATE
# DIST
# VERSION

# TODO: allow selecting local Firefox installation

our $schema = ["firefox::profile_name" => {
    summary => 'Firefox profile name, must exist in local Firefox installation',
    prefilters => ['Firefox::check_profile_name_exists'],
    examples => [
        {
            value   => '',
            valid   => 0,
            test    => 0,
        },
        {
            summary => 'Assuming the default profile name exists in local Firefox installation',
            value   => 'default',
            valid   => 1,
            test    => 0,
        },
    ],
}, {}];

1;
# ABSTRACT:

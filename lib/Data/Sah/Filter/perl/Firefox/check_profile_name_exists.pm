package Data::Sah::Filter::perl::Firefox::check_profile_name_exists;

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
        summary => 'Check that profile name exists in local Firefox installation',
        might_fail => 1,
    };
}

sub filter {
    my %args = @_;

    my $dt = $args{data_term};

    my $res = {};
    $res->{modules}{"Firefox::Util::Profile"} //= 0;
    $res->{expr_filter} = join(
        "",
        "do { ",
        "  my \$tmp = $dt; ",
        "  my \$dir = Firefox::Util::Profile::get_firefox_profile_dir(\$tmp); ",
        "  if (!defined \$dir) { [\"No such Firefox profile '\$tmp'\", \$tmp] } else { [undef, \$tmp] } ",
        "}",
    );

    $res;
}

1;
# ABSTRACT:

=for Pod::Coverage ^(meta|filter)$

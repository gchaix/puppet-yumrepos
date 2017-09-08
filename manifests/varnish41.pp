# Class: yumrepos::varnish41
#
# Installs the Varnish 4.1 yum repository.
#
class yumrepos::varnish41 (
  $varnish41_url = $yumrepos::params::varnish41_url,
  $varnish41_enabled = $yumrepos::params::varnish41_enabled,
  $varnish41_gpgcheck = $yumrepos::params::varnish41_gpgcheck,
  $varnish41_includepkgs = $yumrepos::params::varnish41_includepkgs,
  $varnish41_exclude = $yumrepos::params::varnish41_exclude,
) inherits yumrepos::params {

  yumrepo { 'varnish41':
    descr       => 'Varnish 4.1',
    baseurl     => $varnish41_url,
    enabled     => $varnish41_enabled,
    includepkgs => $varnish41_includepkgs,
    exclude     => $varnish41_exclude,
    gpgcheck    => $varnish41_gpgcheck,
    gpgkey      => 'https://packagecloud.io/varnishcache/varnish41/gpgkey', 
  }
}

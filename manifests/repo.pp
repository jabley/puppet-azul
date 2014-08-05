#
# Add APT/YUM key and repository based on OS
#
# == Parameters:
#
# $ensure::     'present' or 'absent'
# $repo::       'main' or 'unstable'
#
class azul::repo (
  $ensure = 'present',
  $repo   = 'main'
  ) {

  case $::operatingsystem {

    'Debian','Ubuntu': {
      class { 'azul::repo::apt': ensure => $ensure, repo => $repo }
    }

    'Fedora','RedHat','Centos': {
      class { 'azul::repo::yum': ensure => $ensure }
    }

    default: { alert("${::operatingsystem} not supported yet") }

  }

}

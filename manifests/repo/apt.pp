# = Class: azul::repo::apt
#
# Adds Azul repo to Apt
#
# == Parameters
#

class azul::repo::apt (
    $ensure = 'present',
    $repo   = 'main'
  ) {

  if defined(apt::source) and defined(apt::key) {

    apt::source { 'azul':
      ensure        => $ensure,
      location      => 'http://repos.azulsystems.com/ubuntu',
      architecture  => $::architecture,
      key           => '219BD9C9',
      repos         => $repo,
      include_src   => false,
    }

  } else { fail('This class requires puppet-apt module') }

}

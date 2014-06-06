# Class: puppet::params
#
class puppet::params {
  case $::operatingsystem {
    'Fedora',
    'RedHat',
    'CentOS': {
      $sysconfig       = true
      $logdir          = '/var/log/puppet'
      $rundir          = '/var/run/puppet'
      $vardir          = '$vardir/ssl'
      $restart_command = '/sbin/service puppet reload'
    }
    'Gentoo',
    'Archlinux': {
      $sysconfig       = false
      $logdir          = '/var/log/puppet'
      $rundir          = '/run/puppet'
      $vardir          = '$vardir/ssl'
      $restart_command = '/sbin/service puppet restart'
    }
    default: {
      $sysconfig = false
      $logdir = '/var/log/puppet'
      $rundir = '/var/run/puppet'
      $vardir = '$vardir/ssl'
    }
  }
}


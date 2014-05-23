# == Class: dotfiles
#
# Install the dotfiles from a repository and make symlinks from the
# home directory to the dotfiles in the repo.
#
# === Parameters
#
# [*path*]
# The absolute path to clone the repository to. e.g. "/home/vagrant". No
# trailing slashes.
#
# [*source*]
# The remote repository to clone. Prefer SSH connection over HTTP.
#
# === Variables
#
# === Examples
#
#  class { dotfiles:
#    path   => "/home/vagrant/",
#    source => "git://git@github.com/immerzeel/dotfiles.git"
#  }
#
# === Authors
#
# Pascal Immerzeel <pascal@immerzeel.net>
#
# === Copyright
#
# Copyright 2014 Pascal Immerzeel, unless otherwise noted.
#
class dotfiles (
	$path   = $dotfiles::params::path,
	$source = $dotfiles::params::source,
	$group  = $dotfiles::params::group,
	$user   = $dotfiles::params::user
) inherits dotfiles::params {
	validate_string($path, $source, $group, $user)

	anchor {'dotfiles::begin':} ->
	class {'dotfiles::install':} ->
	class {'dotfiles::config':} ->
	anchor {'dotfiles::end':}
}

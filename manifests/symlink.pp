# == Define: symlink
#
# Create symlinks from the home directory to the dotfiles repository.
#
# === Parameters
#
# [*file*]
# The name of the file which is located in the dotfiles repo. The repo
# doesn't contain hidden files, the dot '.' is added when the symlink is
# created.
#
# [*repo_path*]
# The absolute path to the repo containing the files to symlink. No
# trailing slashes.
#
# [*target_path*]
# The absolute path to the home directory of the user. No trailing
# slashes.
#
# === Examples
#
#   dotfiles::symlink { ['vimrc', 'tmux.conf', 'gitconfig']: }
#
# === Authors
#
# Pascal Immerzeel <pascal@immerzeel.net>
#
# === Copyright
#
# Copyright 2014 Pascal Immerzeel, unless otherwise noted.
#
define dotfiles::symlink {
    $file        = $title
    $link_path   = $dotfiles::params::path
    $target_path = "${dotfiles::params::path}/dotfiles"

    # Create the symlink.
    file {"${link_path}/.${file}":
        ensure => link,
        group  => $dotfiles::params::group,
        target => "${target_path}/${file}",
        owner  => $dotfiles::params::user
    }
}

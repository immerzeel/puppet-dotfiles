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
define dotfiles::symlink inherits dotfiles::params {
    $file = $title
    $repo_path = "${dotfiles::params::path}/dotfiles"
    $target_path = $dotfiles::params::path

    # Create the symlink.
    file {"${repo_path}/${file}":
        ensure => link,
        target => "${target_path}/.${file}"
    }
}

class dotfiles::install inherits dotfiles {
	# Clone the remote dotfiles repo to the user home directory.
	vcsrepo {"${path}/${repository_name}":
		ensure   => present,
		provider => git,
		source   => $source
	}
}

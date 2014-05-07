class dotfiles::install {
	
	include dotfiles

	# Clone the remote dotfiles repo to the user home directory.
	vcsrepo {'clone_dotfiles':
		ensure   => present,
		provider => git,
		source   => $source,
		path     => $path
	}
}

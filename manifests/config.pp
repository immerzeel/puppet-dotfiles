class dotfiles::config inherits dotfiles {
	# Files to create a symlink for.
	$files = [
		'gitignore',
		'gitconfig',
		'tmux.conf',
		'muttrc',
		'zprofile',
		'zshrc',
	]
	dotfiles::symlink { $files: }
}

class dotfiles::params {
	$repository_name = 'dotfiles'
	$source = 'https://github.com/immerzeel/dotfiles.git'

	# On virtual machine, default to 'vagrant'.
	if $::is_virtual {
		$user   = 'vagrant'
		$path   = '/home/vagrant'
	}
}

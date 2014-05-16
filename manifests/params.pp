class dotfiles::params {
	$source = 'git://github.com/immerzeel/dotfiles.git'

	# On virtual machine, default to 'vagrant'.
	if $::is_virtual {
		$user   = 'vagrant'
		$path   = '/home/vagrant'
	}
}

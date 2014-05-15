class dotfiles::params {
	$path   = ''
	$source = 'git://git@github.com/immerzeel/dotfiles.git'
	$user   = ''

	# On virtual machine, default to 'vagrant'.
	if $::is_virtual {
		$user   = 'vagrant'
		$path   = '/home/vagrant'
	}
}

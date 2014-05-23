class dotfiles::params {
	$repository_name = 'dotfiles'
	$source = 'git://github.com/immerzeel/dotfiles.git'

	# On virtual machine, default to 'vagrant'.
	if $::is_virtual {
		$group  = 'vagrant'
		$path   = '/home/vagrant'
		$user   = 'vagrant'
	}
}

## Active Configurations ##

# Disable filebucket by default for all File resources:
File { backup => false }
# DEFAULT NODE
# Node definitions in this file are merged with node data from the console. See
# http://docs.puppetlabs.com/guides/language_guide.html#nodes for more on
# node definitions.

# The default node definition matches any node lacking a more specific node
# definition. If there are no other nodes in this file, classes declared here
# will be included in every node's catalog, *in addition* to any classes
# specified in the console for that node.

node default { 
	## NTP Configuration ##
	class { 'ntp':
	servers		=> ['nist-time-server.eoni.com','nist1-lv.ustiming.org','ntp-nist.ldsbc.edu']
	}
	$nameservers = ['8.8.8.8','192.168.1.1']
	## DNS Configuration
	file { '/etc/resolv.conf':
		ensure	=> file,
		owner	=> 'root',
		group	=> 'root',
		mode	=> '0644',
		content	=> template('resolver/resolv.conf.erb'),
	}
	## Sudo Configuration ##
	class { 'sudo': }
	sudo::conf { 'web':
		content  => "web ALL=(ALL) NOPASSWD: ALL",
	}
	class { 'privileges': }
	sudo::conf { 'jargyle':
		priority => 60,
		content  => "jargyle ALL=(ALL) NOPASSWD: ALL",
	}
	## Firewall Configuration ##
	resources { 'firewall':
		purge	=> true,
	}
	Firewall {
		before	=> Class['my_fw::post'],
		require	=> Class['my_fw::pre'],
	}
	class { ['my_fw::pre', 'my_fw::post']: }
	class { 'firewall': }
}
node minibox {
	## NTP Configuration ##
	class { 'ntp':
	servers		=> ['nist-time-server.eoni.com','nist1-lv.ustiming.org','ntp-nist.ldsbc.edu']
	}
	$nameservers = ['8.8.8.8','192.168.1.1']
	## DNS Configuration
	file { '/etc/resolv.conf':
		ensure	=> file,
		owner	=> 'root',
		group	=> 'root',
		mode	=> '0644',
		content	=> template('resolver/resolv.conf.erb'),
	}
	## Sudo Configuration ##
	class { 'sudo': }
	sudo::conf { 'web':
		content  => "web ALL=(ALL) NOPASSWD: ALL",
	}
	class { 'privileges': }
	sudo::conf { 'jargyle':
		priority => 60,
		content  => "jargyle ALL=(ALL) NOPASSWD: ALL",
	}
	## Firewall Configuration ##
	resources { 'firewall':
		purge	=> true,
	}
	Firewall {
		before	=> Class['my_fw::post'],
		require	=> Class['my_fw::pre'],
	}
	class { ['my_fw::pre', 'my_fw::post']: }
	class { 'firewall': }
}
node data {
	## NTP Configuration ##
	class { 'ntp':
	servers		=> ['nist-time-server.eoni.com','nist1-lv.ustiming.org','ntp-nist.ldsbc.edu']
	}
	$nameservers = ['8.8.8.8','192.168.1.1']
	## DNS Configuration
	file { '/etc/resolv.conf':
		ensure	=> file,
		owner	=> 'root',
		group	=> 'root',
		mode	=> '0644',
		content	=> template('resolver/resolv.conf.erb'),
	}
	## Sudo Configuration ##
	class { 'sudo': }
	sudo::conf { 'web':
		content  => "web ALL=(ALL) NOPASSWD: ALL",
	}
	class { 'privileges': }
	sudo::conf { 'jargyle':
		priority => 60,
		content  => "jargyle ALL=(ALL) NOPASSWD: ALL",
	}
	## Firewall Configuration ##
	resources { 'firewall':
		purge	=> true,
	}
	Firewall {
		before	=> Class['my_fw::post'],
		require	=> Class['my_fw::pre'],
	}
	class { ['my_fw::pre', 'my_fw::post']: }
	class { 'firewall': }
}
node twotac {
	## NTP Configuration ##
	class { 'ntp':
	servers		=> ['nist-time-server.eoni.com','nist1-lv.ustiming.org','ntp-nist.ldsbc.edu']
	}
	$nameservers = ['8.8.8.8','192.168.1.1']
	## DNS Configuration
	file { '/etc/resolv.conf':
		ensure	=> file,
		owner	=> 'root',
		group	=> 'root',
		mode	=> '0644',
		content	=> template('resolver/resolv.conf.erb'),
	}
	## Sudo Configuration ##
	class { 'sudo': }
	sudo::conf { 'web':
		content  => "web ALL=(ALL) NOPASSWD: ALL",
	}
	class { 'privileges': }
	sudo::conf { 'jargyle':
		priority => 60,
		content  => "jargyle ALL=(ALL) NOPASSWD: ALL",
	}
	## Firewall Configuration ##
	resources { 'firewall':
		purge	=> true,
	}
	Firewall {
		before	=> Class['my_fw::post'],
		require	=> Class['my_fw::pre'],
	}
	class { ['my_fw::pre', 'my_fw::post']: }
	class { 'firewall': }
}


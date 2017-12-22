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
	class { 'ntp':
	servers			=> ['nist-time-server.eoni.com','nist1-lv.ustiming.org','ntp-nist.ldsbc.edu']
	}
	$nameservers = ['192.168.1.1','8.8.8.8']

	file {'/etc/resolv.conf':
		ensure		=> file,
		owner		=> 'root',
		group		=> 'root',
		mode		=> '0644',
		content		=> template('resolver/resolv.conf.erb'),
	}

	class { 'sudo': }
	sudo::conf { 'jargyle':
		priority	=> 60,
		content		=> "jargyle ALL=(ALL) NOPASSWD: ALL",
	}
}
node minibox {
	
}
node data {
	
}
node twotac {
	
}


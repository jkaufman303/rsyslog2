import '/puppet/lib.pp'

class rsyslog {
	package { ["rsyslog", "rsyslog-gssapi", "rsyslog-relp"]:
		ensure => installed,
	}
	service { "rsyslog":
		ensure => running,
	}


	file { "/etc/apt/sources.list.d/sit.list":
	        source => "/puppet/templates/etc/apt/sources.list.d/sid.list",
	        owner => "root", group => "root", mode => "0644",
	        notify => Exec["apt-get update"],
	}
	exec { "install_rsyslog_wheezy-backports":
		command => "/usr/bin/apt-get update;/usr/bin/apt-get install -q -y -o DPkg::Options::=--force-confold  -t sid rsyslog rsyslog-gssapi rsyslog-relp",
		timeout => 600,
		unless => "/usr/bin/dpkg -l rsyslog | grep ' 8\\.[0-9]'",
		require => [File["/etc/apt/sources.list.d/sid.list"], Package["rsyslog", "rsyslog-gssapi", "rsyslog-relp"]],
	}
}

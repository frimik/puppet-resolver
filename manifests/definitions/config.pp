#
# Define the /etc/resolv.conf file
#
define resolver::config($domainname = "$domain", $searchpath, $nameservers) {
	file { "/etc/resolv.conf":
		owner   => root,
        group   => root,
        mode    => 644,
        content => template("resolver/resolv.conf.erb")
    }
}
maintainer        "Carlo Zottmann"
maintainer_email  "carlo@zottmann.org"
license           "WTFPL"
description       "Installs UFW (Uncomplicated Firewall)"
version           "1.0.0"
depends           "apt"
supports          "ubuntu"

recipe "ufw", "Installs and enables UFW"
recipe "ufw::allow", "sets up 'allow' rules"
recipe "ufw::deny", "sets up 'deny' rules"

attribute "ufw/allow",
  :display_name => "'allow' arguments",
  :description => "An array containing 'allow' rules (<port>/<optional: protocol>)",
  :default => [ "ssh", "http" ]

attribute "ufw/deny",
  :display_name => "'deny' arguments",
  :description => "An array containing 'deny' rules (<port>/<optional: protocol>)",
  :default => []


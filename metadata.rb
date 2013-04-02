name             "eclipse"
maintainer       "BSkyB"
maintainer_email "keith.lyall@bskyb.com"
license          "All rights reserved"
description      "Installs/Configures Eclipse"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.0"

depends "java"
depends "ark"

%w{ debian ubuntu centos redhat fedora }.each do |os|
  supports os
end


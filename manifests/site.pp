class { 'systools': }
class { 'varnish': }
class { 'apache': 
    port => 8081
}
class { 'php':
  development => true
}

class { 'drush': }
class { 'postfix': }


class { 'mysql':
  local_only     => true,
  hostname => $fqdn
}

apache::vhost { "drupal": 
    document_root => $drupal_root
}

class { 'jetty':
    port      => 8983,
    java_opts => "-Dsolr.solr.home=/opt/solr"
}

class { 'solr':
  webapps_dir => "/usr/share/jetty/webapps",
  server      => "jetty",
  cores       => [ "market" ],
}

solr::core { 'market':
  schema_xml     => '3.x/schema.xml',
  solrconfig_xml => '3.x/solrconfig.xml',
}

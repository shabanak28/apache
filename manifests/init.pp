## Puppet module to install apache server. 

class apache (
  $p_ensure = present,
  $s_ensure = running,
){

package { 'httpd':
  ensure => $p_ensure,
}

service {'httpd':
  ensure => $s_ensure,
}

}

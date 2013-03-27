# Puppet manifest for my PHP dev machine
class vertexdevweb{
	require yum
	#include iptables
	include rpmforge
	include misc
	include httpd
	#include phpdev
	#include db
	#include php	
	#include phpmyadmin
}
include vertexdevweb
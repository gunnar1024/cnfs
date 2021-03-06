#!/bin/bash
source ~/openrc
network=`openstack network list | awk '/vlan/ {print $4}'`
openstack  server create test${1} --flavor 1 --image xenial --nic net-id=${network} --property hw:numa_nodes=0 --property hw:mem_page_size=2048


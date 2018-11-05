Role Name
=========

This role spins up a VM on a vCenter to serve as an edge VM for the
[cloud-to-edge](https://github.com/vmware/cloud-to-edge) deploy project.

Requirements
------------

This role assumes some variables are set from cloud-to-edge and is not really
intended to run standalone.

Role Variables
--------------

The following configuration variables affect the operation of this role:
* ```govc_version``` version of the "govc" binary, a CLI tool to communicate
with vCenter (default)
* ```govc_bindir``` path to look for govc (or place it if not found) (default)
* ```base_ova_name``` name of OVA to use as a base for Edge (default)
* ```base_ova_name_arm``` ARM architecture equivalent base OVA (default)
* ```base_ova_server``` web server from which to download base (default)
* ```base_ova_server_arm``` web server for ARM OVA (default)
* ```base_ova_origin``` Full base OVA (default)
* ```base_ova_origin_arm``` Full base ARM OVA (default)
* ```skyway_edge_vm_basename``` base name for VM, prefixed with group (default)
* ```skyway_edge_vm_user``` username created on the VM to run Edge (default)
* ```skyway_edge_vm_password``` password set for the user (default, generated
  if unset)
* ```skyway_edge_vm_network``` name of VM network to attach VM (default)
* ```skyway_edge_vm_ssh_priv_key``` SSH private key to assign to user (default)
* ```skyway_edge_vm_ssh_pub_key``` SSH pubic key corresponding to private key
 (default)
* ```skyway_edges``` list of Edge structured, see default/main.yml for sample
values
* ```aws_greengrass_enable``` must be true if the Edge is to be an
AWS Greengrass Core
* ```azure_iot_enable``` must be true if the Edge is to be an Azure IoT Edge
* ```greengrass_group_names``` list of Greengrass group names, must correspond
to skyway_edge structures
* ```azure_iot_edge_names``` list of AWS Edge names, must correspond to
skyway_edge structures

Dependencies
------------

This role does not explicitly depend on any other roles, but it should logically
be run after the cloud-to-edge roles have been run against the cloud to set up
the Edge at the service provider.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: c2e-driver
      roles:
         - { role: vmware.cloud-to-edge-vm }

License
-------

MIT

Contributing
---------------

The ansible-role-cloud-to-edge-vm project team welcomes contributions from the community. Before you start working with ansible-role-cloud-to-edge-vm, please read our [Developer Certificate of Origin](https://cla.vmware.com/dco). All contributions to this repository must be signed as described on that page. Your signature certifies that you wrote the patch or have the right to pass it on as an open-source patch. For more detailed information, refer to [CONTRIBUTING.md](CONTRIBUTING.md).

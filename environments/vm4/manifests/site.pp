notify { ' This is the vm4 server site.pp ': }

node default {

  include role_vm4
}

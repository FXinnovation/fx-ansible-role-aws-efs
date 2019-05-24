ansible-role-aws-efs
====================

Mount EFS volume for CentOS / RHEL / Debian.  

Requirements
------------

N/A

Role Variables
--------------

Mount mappings

Notes:
- Filesystem must be in the same security group with the EC2 instances using it

Options:
- path:           Local path to mount target folder in your EC2 instance
- owner:          Owner of the folder (default value "root")
- group:          Group of the folder (default value "root")
- mode:           Permissions for the folder (default value "0755")
- region:         In what region filesystem is
- filesystem_id:  Filesystem ID

Dependencies
------------

N/A

Example Playbook
----------------

```yaml
  tasks:
  - name: 'Mount EFS volume'
    vars:
      aws_efs_paths:
      - path: '/data/mft'
        owner: 'ec2-user'
        group: 'ec2-user'
        mode: '0755'
        region: 'ca-central-1'
        filesystem_id: 'fs-8da74460'

    include_role:
      name: ansible-role-aws-efs
```

License
-------

MIT

Author Information
------------------

FXInnovation Inc

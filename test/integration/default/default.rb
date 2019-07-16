control "ansible-role-aws-efs - #{os.name} #{os.release} - 01" do
  impact 1.0
  title 'Ansible role aws efs'

  describe package('nfs-utils') do
    it { should be_installed }
  end
end

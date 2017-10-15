describe sshd_config do
  its('Port') { should eq('22') }
end

describe file('/etc/gai.conf') do
 its('content') { should include 'precedence ::ffff:0:0/96 100' }
end

describe file('/etc/apt/sources.list') do
 its('content') { should include 'deb http://archive.ubuntu.com/ubuntu/ xenial main restricted' }
 its('content') { should include 'deb http://archive.ubuntu.com/ubuntu/ xenial universe' }
 its('content') { should include 'deb http://archive.ubuntu.com/ubuntu/ xenial multiverse' }
 its('content') { should include 'deb http://security.ubuntu.com/ubuntu/ xenial-security main restricted' }
 its('content') { should include 'deb http://security.ubuntu.com/ubuntu/ xenial-security universe' }
 its('content') { should include 'deb http://security.ubuntu.com/ubuntu/ xenial-security multiverse' }
end





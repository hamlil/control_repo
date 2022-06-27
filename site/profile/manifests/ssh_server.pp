class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCYiVD2NfcIUrd3XRnA0x/7Tis4xvvUxYLMbbn1wdYzQNd35RdVwIPlH2wLsqtVmkYZ5LbY583ryOA+sj8uSzMGaJg3Q7OvK0hYsPWX2QgV7g/V1J5b1Ug1x0FHHaUvMnlQvRRjXappSuYzQ/oDsd4GdSbk9FrLWGYdN6NntRAyneedmCvfmc9rXgDFz/R6Z90Bi/La5S2o1te3v8bT3jcsLtHaXrsfkC7pPPOSUT0VT3qi4tQn5e5HWd6SxlolDdRkJhM+slzxcSlEbDVUXAcuWOz1CTOM3gzdDRiM7yscBOY9gCinRk/G8R+TEaFXaQnSkME0VvtzCYnEwR3dKhJf',
	}  
}

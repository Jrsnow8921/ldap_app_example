Adauth.configure do |c|
	# The Domain name of your Domain
	#
	# This is usually my_company.com or my_company.local
	#
	# If you don't know your domain contact your IT support,
	# it will be the DNS suffix applied to your machines
	c.domain = "pennunited.com" 
	
	# The IP address or Hostname of a DC (Domain Controller) on your network
	#
	# This could be anything and probably wont be 127.0.0.1
	#
	# Again contact your IT Support if you can't work this out
	c.server = "penndc01.pennunited.com"
	
	# The LDAP base of your domain/intended users
	#
	# For all users in your domain the base would be:
	# dc=example, dc=com
	# OUs can be prepeneded to restrict access to your app
	c.base = "dc=pennunited, dc=com"
 	
        c.ad_sv_attrs = { :login => [:samaccountname,
                              Proc.new {|l| l.join(', ')}],
                    :first_name => [:givenname,
                                Proc.new {|g| g.join(', ')}],
                    :last_name => [:sn, Proc.new{ |g| g.join(', ')}],
                    :name => [:name, Proc.new {|n| n.join(', ')}] }
end



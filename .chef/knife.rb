# See https://docs.getchef.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "admin"
client_key               "#{current_dir}/admin.pem"
chef_server_url          "https://ip-172-31-8-16.sa-east-1.compute.internal/organizations/awsorg"
cookbook_path            ["#{current_dir}/../cookbooks"]

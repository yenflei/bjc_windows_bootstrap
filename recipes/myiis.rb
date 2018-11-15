powershell_script 'Install IIS' do
    code 'Add-WindowsFeature Web-Server'
end

file 'C:\inetpub\wwwroot\Default.htm' do
  content "<h1>Hello, world Windows!</h1>
  <h2>ipaddress: #{node['ipaddress']}</h2>
  <h2>hostname: #{node['hostname']}</h2>
  <h2>total memory: #{node['memory']['total']}</h2>
  <h2>CPU Mhz: #{node['cpu']['0']['mhz']}</h2>"
end

service 'w3svc' do
  action [:enable, :start]
end
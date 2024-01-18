# Create repo for CentOS
repo_location="/etc/yum.repos.d/nginx.repo"

if [ ! -e $repo_location ]; then
  cat > $repo_location << _EOF_
[nginx]
name=nginx repo
baseurl=https://nginx.org/packages/centos/\$releasever/\$basearch/
gpgcheck=0
enabled=1
_EOF_
fi;

# General installation
sudo yum install nginx -y 

# Systemd config
sudo systemctl enable nginx
sudo systemctl start nginx



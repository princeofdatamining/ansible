# ./$0 HOST

GROUP_DEFAULT="wheel"
GROUP_DEVEL="devel"
JAVA_HOME="/usr/java"

# add user `whoami`: group=devel,wheel
ansible-playbook -i $1, -u root -e user=`whoami` -e group="$GROUP_DEVEL" -e grouplist="$GROUP_DEFAULT" -e pub=https://raw.github.com/princeofdatamining/xnx/master/sshkey/sam.pub user.yml

# add path /usr/java: group=devel
ansible-playbook -i $1, -u root -e path="$JAVA_HOME" -e group="$GROUP_DEVEL" mkdir.yml

# install jdk
ansible-playbook -i $1, -u `whoami` java.yml

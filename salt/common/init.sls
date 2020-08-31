vim-enhanced:
  pkg.installed
/etc/vimrc:
  file.managed:
    - source: salt://common/files/vimrc
    - mode: 644
    - user: root
    - group: root
nano:
  pkg:
    - removed
htop:
  pkg.installed
curl:
  pkg.installed
wget:
  pkg.installed
python3-pip:
  pkg.installed
tree:
  pkg.installed
nmap-ncat:
  pkg.installed
vim-enhanced:
  pkg.installed
/etc/vimrc:
  file.managed:
    - source: salt://common/files/vimrc
    - mode: 644
    - user: root
    - group: root
  require:
    - pkg: vim-enhanced
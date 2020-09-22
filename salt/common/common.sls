common_remove:
  pkg.removed:
  - pkgs:
    - nano

common_install:
  pkg.installed:
  - pkgs:
    {% if grains['os_family'] == 'RedHat' %}
    - htop
    - curl
    - wget
    - python3-pip
    - tree
    - nmap-ncat
    - screen
    - ncdu
    - pwgen
    - zip
    - unzip
    - sudo
    - whois
    - openssh-clients
    - openssh-server
    {% endif %}
  - refresh: true
  - cache_valid_time: 300
  - latest_version: true

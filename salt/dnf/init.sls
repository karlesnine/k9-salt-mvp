dnf:
  pkg.installed:
    - refresh: true
    - cache_valid_time: 300
    - latest_version: true

/etc/dnf/dnf.conf:
  file.managed:
    - source: salt://dnf/files/dnf.conf
    - mode: 644
    - user: root
    - group: root
  require:
    - pkg: dnf
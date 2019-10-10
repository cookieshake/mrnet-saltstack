set_fast_repo:
  file.managed:
    - name: /etc/apt/sources.list
    - source: salt://defaults/sources.list

update_all_pkgs:
  pkg.uptodate:
    - refresh : True

install_minimal_packages:
  pkg.installed:
    - pkgs:
      - vim
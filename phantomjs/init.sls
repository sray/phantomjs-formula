# TODO extract this into map jinja
{% set os = 'linux' %}
{% set arch = 'x86_64' %}

{% for ver in pillar['phantomjs']['versions'] %}
phantomjs-{{ ver }}:
  archive.extracted:
    - name: /opt/
    - source: https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-{{ ver }}-{{ os }}-{{ arch }}.tar.bz2
    - skip_verify: True
    - archive_format: tar
    - options: '-j'
    - if_missing: /opt/phantomjs-{{ ver }}-{{ os }}-{{ arch }}

{% if pillar['phantomjs']['default'] is defined and pillar['phantomjs']['default'] == ver %}
phantomjs-default:
  file.symlink:
    - name: /usr/bin/phantomjs
    - target: /opt/phantomjs-{{ ver }}-{{ os }}-{{ arch }}/bin/phantomjs
{% endif %}
{% endfor %}


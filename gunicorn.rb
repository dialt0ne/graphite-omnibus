class Gunicorn < FPM::Cookery::Recipe
  description 'Gunicorn'

  name     'gunicorn'
  section  'Monitoring'
  version  '19.1.1'
  revision 0
  
  homepage 'https://github.com/jssjr/carbonate'
  source   'https://github.com/benoitc/gunicorn/archive/19.1.1.tar.gz'
  sha256 'c2e131808f9afaa3dc273c039d4f49d08b6f614a15004cabb0f0f40f27f06598'

  maintainer 'Anthony Tonns <anthony@tonns.com>'
  vendor     'fpm'
  license    'Apache License'

  def build
    safesystem "/opt/graphite-omnibus/bin/python setup.py build"
  end

  def install
    safesystem "/opt/graphite-omnibus/bin/python setup.py install"
  end

end

class Whisper < FPM::Cookery::Recipe
  description 'Whisper'

  name     'whisper'
  section  'Monitoring'
  version  '0.9.13-pre1'
  revision 0
  
  homepage 'https://github.com/graphite-project/whisper'
  source   'https://github.com/graphite-project/whisper', :with => :git, :tag  => '0.9.13-pre1'

  maintainer 'Andy Sykes <github@tinycat.co.uk>'
  vendor     'fpm'
  license    'Apache License'

  def build
    safesystem "/opt/graphite-omnibus/bin/python setup.py build"
  end

  def install
    safesystem "/opt/graphite-omnibus/bin/python setup.py install \
                --prefix=/opt/graphite-omnibus/graphite \
                --install-lib=/opt/graphite-omnibus/graphite/lib"
  end

end

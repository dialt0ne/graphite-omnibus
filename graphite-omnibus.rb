class GraphiteOmnibus < FPM::Cookery::Recipe
  homepage "https://launchpad.net/graphite"

  section "Monitoring"
  name "graphite-omnibus"
  version "0.9.13-pre1"
  description "Graphite Omnibus package"
  revision 2
  vendor "fpm"
  maintainer "Anthony Tonns <anthony@tonns.com>"
  license "Apache 2.0 License"

  source '', :with => :noop

  omnibus_package true
  omnibus_recipes "python", "python-setuptools", "graphite-dependencies",
                  "whisper", "carbon", "graphite-web",
                  "carbonate",
                  "gunicorn",
                  "init-scripts"
  omnibus_dir     "/opt/graphite-omnibus"
  omnibus_additional_paths "/etc/init.d/graphite-carbon-relay",
                           "/etc/init.d/graphite-carbon-cache",
                           "/etc/init.d/graphite-carbon-aggregator",
                           "/etc/init.d/graphite-web-gunicorn"
  pre_install "pre_install"

  def build
    # Nothing
  end

  def install
    # Nothing
  end

end

require "rails/railtie"

module Altria
  module Pipeline
    class Railtie < Rails::Railtie
      initializer "altria.pipeline" do
        require "altria/pipeline/initializer"
      end
    end
  end
end

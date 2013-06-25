require "rails/railtie"

module Magi
  module Pipeline
    class Railtie < Rails::Railtie
      initializer "magi.pipeline" do
        require "magi/pipeline/initializer"
      end
    end
  end
end

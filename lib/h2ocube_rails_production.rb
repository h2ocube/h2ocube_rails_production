%w(exception_notification h2ocube_rails_cache).each{ |gem| require gem }


module H2ocubeRailsProduction
  module Rails
    class Rails::Engine < ::Rails::Engine
      initializer 'h2ocube_rails_production.require_dependency' do |app|

      end
    end
  end
end

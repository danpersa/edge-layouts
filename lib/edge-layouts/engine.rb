module EdgeLayouts
  class Engine < ::Rails::Engine
    isolate_namespace EdgeLayouts
    config.generators do |g|
      g.test_framework      :rspec, :view_specs => false
      g.fixture_replacement :factory_girl
      g.orm                 :mongoid
    end
  end
end

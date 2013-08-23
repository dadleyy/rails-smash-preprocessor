require 'rails'

module RailsSmash
  
  class SmashTie < Rails::Railtie
    # hook rails-smash into the asset pipeline
    initializer "rails-smash" do |app|
      app.assets.register_preprocessor 'application/javascript', SmashPreprocessor
    end
  end
  
end
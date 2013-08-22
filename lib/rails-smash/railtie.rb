require 'rails'

module RailsSmash
  
  class SmashTie < Rails::Railtie
    
    initializer "something" do |app|
      app.assets.register_preprocessor 'application/javascript', SmashPreprocessor
    end
    
  end

end
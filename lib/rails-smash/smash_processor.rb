require 'sprockets'

module RailsSmash
  
  class SmashPreprocessor < Sprockets::Processor
  
    IMPORT_DIRECTIVE = /^import\s"(.*)";?$/;
  
    def evaluate(context, locals) 
      
    end
    
  end
  
end
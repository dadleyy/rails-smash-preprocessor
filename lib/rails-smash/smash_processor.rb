module RailsSmash
  
  class SmashPreprocessor < Sprockets::Processor
  
    IMPORT_DIRECTIVE = /^import\s"(.*)";?$/;
  
    def evaluate(context, locals)
      data.gsub( IMPORT_DIRECTIVE, "console.log('whattttaaaapp world');")
    end
    
  end
  
end
require 'sprockets'

module RailsSmash
  
  class SmashPreprocessor < Sprockets::Processor
  
    IMPORT_DIRECTIVE = /^import\s"(.*)";?$/
    DIR_IMPORT = /^(.*)\/$/
    JS_EXPLICIT_IMPORT = /^(.*)\.js$/
    
    def process_directory_import(context, path = "")
      process_file_import context, "#{path}index.js"
    end
    
    def process_file_import(context, script_path = "")     
      # drop the trailing path info ("sadasd/dasd.js" would drop "dasd.js")
      rel_path = file[/^(.*\/).*\.js$/, 1 ]
      # add that full path to the relative on in the "import" directive
      full_path = "#{rel_path}#{script_path}"
      # add that file to this one's dependency
      context.depend_on_asset full_path
      # run the processor on the script (importing its imports)
      context.evaluate full_path
    end
    
    def evaluate(context, locals)
      data.gsub( IMPORT_DIRECTIVE ) do |a|
        target = $1
        if !!target.match(DIR_IMPORT)
          process_directory_import context, target 
        else 
          if !!target.match(JS_EXPLICIT_IMPORT)
            process_file_import context, target
          else
            process_file_import context, "#{target}.js"
          end
        end
      end
    end
    
  end
  
end
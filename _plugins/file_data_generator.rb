require 'date'

module Jekyll
  class FileDataGenerator < Generator
    priority :highest

    def generate(site)
      file_data = {} # Initialize an empty hash to store file names and dates

      # Process files and their last modified dates
      files = `git ls-tree -r --name-only HEAD`.split("\n").select do |filename|
        filename.match(%r{^(docs/|index\.md$)}i) # Only include files in 'docs/' or 'index.md'
      end

      files.each do |file|
        date = `git log -1 --format="%ad" --date=short -- #{file}`.strip
        file_name = File.basename(file, File.extname(file)) # Extract file name without extension
        formatted_date = Date.parse(date).strftime("%B %d, %Y") rescue "Unknown"
        #puts "File: #{file_name}, Last Modified: #{formatted_date}" # Output for verification
        file_data[file_name] = formatted_date # Add file name and date to the hash
      end

      # Add file_data to the site object
      site.config['file_data'] = file_data
    end
  end
end
require 'rake'

task :spec do
  Dir.glob('modules/*').each do |dir|
    rake_file = File.expand_path( File.join( dir, 'Rakefile' ) )
    if File.exists?(rake_file)
      Dir.chdir(dir) do
        puts `rake spec`
      end
    end
  end
end

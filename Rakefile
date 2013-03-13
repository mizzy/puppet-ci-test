require 'rake'

task :spec do
  status = 0
  Dir.glob('modules/*').each do |dir|
    rake_file = File.expand_path( File.join( dir, 'Rakefile' ) )
    if File.exists?(rake_file)
      Dir.chdir(dir) do
        puts `rake spec`
        status = $? if $? != 0
      end
    end
  end
  fail if status
end

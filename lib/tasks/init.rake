namespace :setup do 
	desc "Initial tasks"
	task :create, [:arg] do |t, args|
		name = args[:arg]
	  
	  print "Clean up the standard Gemfile for a new one?(y/n): "
	  option = STDIN.gets.strip
	   if option.to_s[0] =~ /[Yy]/
	  		puts "Setting a new Gemfile."
	  		mv 'lib/tasks/Gemfile', '.', verbose: false

	  		puts "Running bundle install. This may take a while...\n\n"
	  		#sh "bundle install"

	  		print "Do you wish to setup git?(y/n): "
	  		option2 = STDIN.gets.strip
	   	
	   		if option2.to_s[0] =~ /[Yy]/
	   			
	   			load "lib/tasks/git.rake"
	   			Rake::Task["setup:git"].invoke

	   		else
	   			#end
	  		end 
	  	end
	end
end
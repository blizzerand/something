namespace :setup do
	desc "Git tasks"
	task :git do
		sh 'git init'
		puts "Adding a few items to .gitignore."
		mv 'lib/tasks/.gitignore', '.', verbose: false

		puts "Setting up git"
		sh 'git add .'
		sh 'git commit -m "Init" '

		puts "Enter the link to your repository for this app." 
		repo = STDIN.gets.strip
		sh "git remote add origin #{repo}"
		sh 'git push -u origin master'
	end
end
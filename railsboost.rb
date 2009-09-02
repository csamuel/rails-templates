# Created by RailsBoost.com
# Generated at Tue Sep 01 21:20:42 -0700 2009
# Generator by Hampton Catlin

############## plugin commands #################

# Fixture replacement for focused and readable tests.
plugin 'factory_girl',
       :git => "git://github.com/thoughtbot/factory_girl.git"

# BDD that talks to domain experts first and code 2nd
plugin 'cucumber',
       :git => "git://github.com/aslakhellesoy/cucumber.git"

# Attachments with no extra database tables, only one library to install for image processing
plugin 'paperclip',
       :git => "git://github.com/thoughtbot/paperclip.git"

# Hampton's favorite Resource System
plugin 'make_resourceful',
       :git => "git://github.com/hcatlin/make_resourceful.git"



############## gem commands #################

gem 'erubis'



##############  commands #################

run "curl -L http://jqueryjs.googlecode.com/files/jquery-1.2.6.min.js > public/javascripts/jquery.js"
run "touch tmp/.gitignore log/.gitignore vendor/.gitignore"
  run %{find . -type d -empty | grep -v "vendor" | grep -v ".git" | grep -v "tmp" | xargs -I xxx touch xxx/.gitignore}
  file '.gitignore', <<-END
.DS_Store
log/*.log
tmp/**/*
config/database.yml
db/*.sqlite3
END
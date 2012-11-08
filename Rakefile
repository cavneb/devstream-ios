# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'bundler'
Bundler.require
require 'motion-cocoapods'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'DevStream'

  tbs = 'app/screens/home_screen.rb'
  app.files_dependencies 'app/screens/contributor_screen.rb' => tbs,
                         'app/screens/contributors_screen.rb' => tbs,
                         'app/screens/post_screen.rb' => tbs,
                         'app/screens/posts_screen.rb' => tbs

  app.pods do
    pod 'ECSlidingViewController'
  end                       
end

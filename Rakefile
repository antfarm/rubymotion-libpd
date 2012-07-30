# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'rubymotion-libpd'
  app.device_family = :ipad

  app.frameworks << 'AVFoundation'
  app.frameworks << 'CoreAudio'

  app.vendor_project('vendor/pd-for-ios/libpd', :xcode,
    :xcodeproj => 'libpd.xcodeproj',
    :target => 'libpd-ios',
    :headers_dir => 'objc'
  )
end

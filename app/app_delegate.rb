class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    UIAlertView.new.tap do |alert|
      alert.message = "antfarm/rubymotion-libpd"
    end.show

    @controller = PdAudioController.alloc.init
    @controller.configurePlaybackWithSampleRate(44100, 
      numberChannels: 2, inputEnabled:false, mixingEnabled: true) 
    @controller.configureTicksPerBuffer(64)
    
    @dispatcher = PdDispatcher.alloc.init
    PdBase.setDelegate(@dispatcher) 
    @patch = PdBase.openFile('beep.pd', path:NSBundle.mainBundle.resourcePath)
    
    @controller.active = true

    true
  end
end

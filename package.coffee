pack = Packages.register
  name: 'sound device'
  description: 'command for sound depends on: http://whoshacks.blogspot.com/2009/01/change-audio-devices-via-shell-script.html'

pack.commands
  "change output device":
    spoken: "change output device"
    description: "change output device"
    enabled: true
    grammarType: 'textCapture'
    continuous: false
    action: (input) ->
      input = input.join(' ')

      # adjust these based on which output devices you have
      if input == 'internal'
        device = 'Internal Speakers'
      else if input == 'usb'
        device = 'SpeechMatic USB MultiAdapter'

      @exec('~/voicecode/packages/voicecode_sound_device/Audiodevice/audiodevice output "' + device + '"')

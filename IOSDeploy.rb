class IOSDeploy

  def initialize
    init = `which ios-deploy`
    puts "Missing ios-deploy" if init.length < 1
  end

  def connected_devices
    devices = []
    stdout = `system_profiler SPUSBDataType | sed -n -E -e '/(iPhone|iPad)/,/Serial/s/ *Serial Number: *(.+)/\\1/p'`
    stdout.split("\n")
  end

  def install_to_all_devices(filename)
    devices = connected_devices
    puts "Installing"
    devices.each do |d|
      install_apk(d, filename)
   end
  end

  def install_apk(device, filename)
      puts "Device Name : #{device}"
      puts `ios-deploy -i #{device} --bundle #{filename}`
  end

end

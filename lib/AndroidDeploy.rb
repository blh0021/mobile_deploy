class AndroidDeploy

  def initialize
    init = `which adb`
    puts "Missing adb" if init.length < 1
  end

  def connected_devices
    devices = []
    stdout = `adb devices`
    line = stdout.split("\n")
    (1..line.length-1).each do |n|
      devices << line[n].split(" ")[0]
    end
    devices
  end

  def install_pkg_all_devices(filename)
    devices = connected_devices
    puts "Installing"
    devices.each do |d|
      install_apk(d, filename)
   end
  end

  def install_apk(device, filename)
      puts "Device Name : #{device}"
      `adb -s #{device} install #{filename}`
  end

end

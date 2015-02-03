Mobile Deploy
====================
#Android Devices
```bash
deploy_android /path/to/yourfilename.apk
```

#IOS Devices
##Dependencies

You will need ios-deploy in order to run the IOS section.

```bash
npm -g install ios-deploy
```

##Run

```bash
deploy_ios /path/to/yourfilename.app
```

##Troubleshooting
####AMDeviceInstallApplication failed: 0xE8008016: Unknown error.
The entitlements specified in your application’s Code Signing Entitlements file do not match those specified in your provisioning profile.


@echo off
cls
@echo ---------Existing Plugins--------------
cmd.exe /c"cordova plugin list"
@echo ---------Removing Platforms--------------
cmd.exe /c"ionic platform remove android"
cmd.exe /c"ionic platform remove ios"
@echo ---------Removing Plugins & Platforms Folder's---------
rmdir /s /q platforms
rmdir /s /q plugins
@echo ------------Ionic State Restore------------
cmd.exe /c "ionic state restore"
@echo -------------Adding Plugins From Plugins Folder------
for %%a in (
    "../plugins/cordova-plugin-whitelist-master"
    "../plugins/cordova-plugin-screen-orientation-master"
    "../plugins/Cordova-sqlcipher-adapter-cipher-rc"
    "../plugins/cordova-plugin-network-information-master"
    "../plugins/cordova-plugin-statusbar-master"
    "../plugins/cordova-plugin-device-master"
    "../plugins/cordova-plugin-dialogs-master"
    "../plugins/phonegap-pushplugin-master"
    "../plugins/SocialSharing-PhoneGap-Plugin-master"
    "../plugins/cordova-disable-nsurl-cache-master"
    "../plugins/cordova-plugin-cache-master"
    "../plugins/SSLCertificateChecker-PhoneGap-Plugin-master"
    "../plugins/PrivacyScreenPlugin-master"
    "../plugins/google-analytics-plugin-master"
) do ionic plugin add %%a

@echo ---------All Plugins Added--------------
@echo ---------Existing Plugins--------------
cmd.exe /c "ionic plugin list"
@echo ------------Adding Platforms ------------
cmd.exe /c "ionic platform add android"



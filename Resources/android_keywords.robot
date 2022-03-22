*** Settings ***
Resource         ../Resources/Variables.robot
Resource         ../Resources/UserActions.robot

*** Keywords ***
Open App With Desired Capabilities
    [Arguments]         ${appPackage}       ${appActivity}
    log to console      Setting App Desired Capabilities
    open application  http://127.0.0.1:4723/wd/hub
    ...       platformName=${platformName}
    ...       deviceName=${deviceName}
    ...       appPackage=${appPackage}
    ...       appActivity=${appActivity}

Open App With Desired Capabilities Add-Contacts
    log to console      Setting App Desired Capabilities
    open application  http://127.0.0.1:4723/wd/hub
    ...       platformName=${platformName}
    ...       deviceName=${deviceName}
    ...       appPackage=${contact_appPackage}
    ...       appActivity=${contact_appActivity}

Open App With Desired Capabilities Add-Alarm
    log to console      Setting App Desired Capabilities
    open application  http://127.0.0.1:4723/wd/hub
    ...       platformName=${platformName}
    ...       deviceName=${deviceName}
    ...       appPackage=${clock_appPackage}
    ...       appActivity=${clock_appActivity}

Search For WallPaper Settings
    Click On Search Area
    Search Wallpaper & Settings
    Select Wallpaper & Settings

Select Random WallPaper
    Select Random WallPaper Theme
    Select Random Wallpaper Screen

Apply WallPaper and Save
    Apply the WallPaper
    Save the WallPaper

Add New Contact
    Press Add New Contact Button
    Donot Add Account

Enter The Contact Details
    Enter first Name
    Enter Last Name
    Enter Phone Number

Remove Existing Alarms
    Select The Alarm
    Check For Existing Alarms And Remove

Check For Existing Alarms And Remove
    ${alarm_present} =      Check If Alarms Exists
    run keyword if      ${alarm_present}        Remove Alarms

Add New Alarm At 7:00 AM, Add "Wake Up" As Label, And Disable Vibrate
    Add New alarm
    Set Alarm       7   00  am
    Disable Vibrate Checkbox
    Add Label       Wake Up
    Collapse Alarm

Add New Alarm At 10:00 AM, Add "Cook Lunch" As Label, Enable Vibrate
    Add New Alarm
    Set Alarm       10   00  am
    Add Label       Cook Lunch
    Collapse Alarm

Count Total Alarms and take Screenshot
    ${count}=       Alarm Count
    capture page screenshot
    Press keycode       3

Go to Homescreen And Take Screenshot
    Go to Homescreen
    capture screenshot

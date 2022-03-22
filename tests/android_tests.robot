*** Settings ***
Documentation   Suite description
Library         AppiumLibrary
Resource         ../Resources/android_keywords.robot
Resource         ../Resources/Variables.robot
Resource         ../Resources/UserActions.robot
Test Teardown   Close Application

*** Test Cases ***
TC_1:User Should Be Able To Change Android Wallpaper
    [Tags]      Wp_Settings
    Open App With Desired Capabilities      ${WallPaper_appPackage}     ${WallPaper_Settings}
    Search For WallPaper Settings
    Select Random Wall Paper
    Apply WallPaper and Save
    Go to Homescreen And Take Screenshot

TC_2: User Should Be Able To Add New Contact
    [Tags]      Add_Contact
    Open App With Desired Capabilities      ${contact_appPackage}       ${contact_appActivity}
    Add New Contact
    Enter The Contact Details
    Save The Contact

TC_3: User Should Be Able To Add New Alarm
    [Tags]      Add_Alarm
    Open App With Desired Capabilities        ${clock_appPackage}     ${clock_appActivity}
    Remove Existing Alarms
    Add New Alarm At 7:00 AM, Add "Wake Up" As Label, And Disable Vibrate
    Add New Alarm At 10:00 AM, Add "Cook Lunch" As Label, Enable Vibrate
    Count Total Alarms and take Screenshot
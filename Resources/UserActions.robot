*** Settings ***
Resource         Variables.robot
Library          GenerateContactInfo.py

*** Keywords ***
Click On Search Area
    log to console      Clicking the seach button
    wait until element is visible       ${search_bar}
    click element       ${search_bar}

Search Wallpaper & Settings
    log to console      Searching the Wallpaper & settings
    wait until element is visible       ${open_search_view_edit_text}
    input text      ${open_search_view_edit_text}      Wallpaper & style

Select Wallpaper & Settings
    log to console      Selecting Wallpaper & settings
    wait until element is visible       ${Wp_title}
    click element       ${Wp_title}

Select Random Wallpaper Theme
    log to console      Selecting random Wallpaper theme
    ${i}=       Evaluate        random.randint(1, 5)
    wait until element is visible       ${ss_layout}${i}${ss_layout_textview}
    click element       ${ss_layout}${i}${ss_layout_textview}

Select Random Wallpaper Screen
    log to console      Selecting random Walllpaper screen
    ${i}=       Evaluate        random.randint(1, 6)
    wait until element is visible       ${ss_imageview}${i}]      15
    click element       ${ss_imageview}${i}]

Apply the WallPaper
    log to console      Applying the wallpaper
    wait until element is visible       ${apply_wp}
    click element       ${apply_wp}

Save the WallPaper
    log to console      Applying the wallpaper
    wait until element is visible       ${save_wp}
    click element       ${save_wp}

Go to Homescreen
    log to console      Going to homescreen
    Press keycode       3

Press Add New Contact Button
    log to console      Pressing New Contact Button
    wait until element is visible       ${add_contact_button}
    click element       ${add_contact_button}

Donot Add Account
    log to console      Pressing New Contact Button
    wait until element is visible       ${cancel_add_account}
    click element       ${cancel_add_account}

Enter First Name
    log to console      Entering Firstname
    Wait until element is visible       ${firstname_textview}   30
    click Element       ${firstname_textview}
    ${firstname} =    create firstname   first
    Set Global Variable      ${firstname}     ${FIRSTNAME}
    input text      ${firstname_textview}       ${FIRSTNAME}

Enter Last Name
    log to console      Entering Lastname
    Wait until element is visible       ${lastname_textview}
    click Element       ${lastname_textview}
    ${lastname} =    create lastname   last
    Set Global Variable      ${lastname}     ${LASTNAME}
    input text      ${lastname_textview}       ${LASTNAME}

Enter Phone Number
    log to console      Entering Phonenumber
    Wait until element is visible       ${phonenumber_textview}
    click Element       ${phonenumber_textview}
    ${phonenumber} =    create phonenumber
    input text      ${phonenumber_textview}       ${phonenumber}

Save The Contact
    log to console      Saving the contact
    Wait until element is visible       ${save_button}
    click element       ${save_button}

Select The Alarm
    log to console      Selecting the alarm
    wait until element is visible        ${alarm_image}
    click element       ${alarm_image}

Check If Alarms Exists
    log to console      Checking for alarms
    wait until element is visible       ${alarm_view}
    ${result}=      Run Keyword And Return Status       Page Should Contain Element     ${expand_alarm_icon}
    [return]      ${result}

Remove Alarms
    log to console      Removing Alarm
    ${count} =      Alarm Count
    FOR    ${i}    IN RANGE    ${count}
           Exit For Loop If    ${i} == ${count}
           Expand Alarm Settings
           Delete Alarm
    END

Alarm Count
    Run Keyword And Return      Get matching xpath count       ${expand_alarm_icon}

Expand Alarm Settings
    log to console      Expanding Alarms
    click element       ${open_alarm_setting_icon}

Delete alarm
    log to console      Deleting Alarm
    wait until element is visible       ${delete_app_icon}
    click element       ${delete_app_icon}

Add New Alarm
    log to console      Adding New Alarm
    wait until element is visible       ${add_alarm_button}
    click element       ${add_alarm_button}

Set Alarm
    [Arguments]         ${hour}     ${minute}       ${AM/PM}
    log to console      Setting New Alarm
    wait until element is visible       ${clock_image}
    click element       ${hour_hand}${hour}]
    wait until element is visible       ${clock_image}
    click element       ${minute_hand}${minute}]
    click element       ${am_label}${AM/PM}_label
    click element       ${confirm_time}

Add Label
    [Arguments]         ${text}
    log to console      Setting label
    wait until element is visible       ${label_textview}
    click element       ${label_textview}
    wait until element is visible       ${label_input_field}
    input text      ${label_input_field}       ${text}
    click element       ${text_label_ok}

Disable Vibrate Checkbox
    log to console      Disabling checkbox
    wait until element is visible       ${vibrate_on_off}
    click element       ${vibrate_on_off}

Collapse Alarm
    log to console      Collapsing alarm
    wait until element is visible       ${collapse_alarm_icon}
    click element       ${collapse_alarm_icon}

capture screenshot
    wait until element is visible       ${home_message_xpath}
    capture page screenshot








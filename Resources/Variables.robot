*** Variables ***
${platformName}                         Android
${deviceName}                           Android Emulator
${WallPaper_appPackage}                 com.android.settings
${WallPaper_Settings}                   .Settings
${search_bar}                           id=com.android.settings:id/search_action_bar_title
${open_search_view_edit_text}           id=com.google.android.settings.intelligence:id/open_search_view_edit_text
${Wp_title}                             android:id/title
${ss_layout}                            //android.widget.LinearLayout[
${ss_layout_textview}                   ]/android.widget.TextView
${ss_imageview}                         //androidx.recyclerview.widget.RecyclerView/android.widget.LinearLayout[
${apply_wp}                             com.google.android.apps.wallpaper:id/action_apply
${save_wp}                              com.google.android.apps.wallpaper:id/set_both_wallpaper_button
${contact_appPackage}                   com.android.contacts
${contact_appActivity}                  com.android.contacts.activities.PeopleActivity
${add_contact_button}                   com.android.contacts:id/floating_action_button_container
${cancel_add_account}                   com.android.contacts:id/left_button
${firstname_textview}                   //*[@resource-id='com.android.contacts:id/kind_section_views']//android.widget.LinearLayout[1]//android.widget.EditText[1]
${lastname_textview}                    //*[@resource-id='com.android.contacts:id/kind_section_views']//android.widget.LinearLayout[1]//android.widget.EditText[2]
${phonenumber_textview}                 //*[@resource-id='com.android.contacts:id/kind_section_views']//android.widget.LinearLayout[2]//android.widget.EditText
#//android.widget.ImageView[@content-desc='Phone']//following-sibling::android.widget.LinearLayout[@resource-id='com.android.contacts:id/kind_editors']/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.LinearLayout/android.widget.EditText
${save_button}                          com.android.contacts:id/editor_menu_save_button
${clock_appPackage}                     com.google.android.deskclock
${clock_appActivity}                    com.android.deskclock.DeskClock
${alarm_image}                          //nh[@content-desc="Alarm"]/android.widget.TextView
${expand_alarm_icon}                    //android.widget.ImageButton[@content-desc='Expand alarm']
${open_alarm_setting_icon}              //*[@resource-id='com.google.android.deskclock:id/alarm_recycler_view']/android.view.ViewGroup/android.widget.ImageButton[@content-desc='Expand alarm']
${delete_app_icon}                      com.google.android.deskclock:id/delete
${add_alarm_button}                     com.google.android.deskclock:id/fab
${clock_image}                          android:id/radial_picker
${hour_hand}                            //android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc=
${minute_hand}                          //android.widget.RadialTimePickerView.RadialPickerTouchHelper[@content-desc=
${am_label}                             android:id/
${confirm_time}                         android:id/button1
${vibrate_on_off}                       com.google.android.deskclock:id/vibrate_onoff
${label_textview}                       com.google.android.deskclock:id/edit_label
${label_input_field}                    com.google.android.deskclock:id/label_input_field
${text_label_ok}                        android:id/button1
${collapse_alarm_icon}                  //android.widget.ImageButton[@content-desc="Collapse alarm"]
${home_message_xpath}                   //android.widget.TextView[@content-desc="Messages"]
${alarm_view}                           //android.view.ViewGroup[@content-desc=' Alarm']
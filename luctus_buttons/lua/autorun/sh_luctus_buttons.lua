--Luctus Buttons
--Made by OverlordAkise

--Should player "press" the button (if false then "world" presses)
LUCTUS_BUTTONS_PLAYERPRESS = true
--Chat command to open the menu
LUCTUS_BUTTONS_COMMAND = "!buttons"
--Title of ingame window
LUCTUS_BUTTONS_WINDOW_TITLE = "Luctus | Buttons"
--Text before the button name in the menu
LUCTUS_BUTTONS_BUTTONTEXT = "Activate "
--What text should appear in chat after pressing a button
LUCTUS_BUTTONS_CHATTEXT = "Successfully pressed button "
--Should only specific jobs be allowed to use this
LUCTUS_BUTTONS_CHECK_JOB = true
--Which jobs should be allowed
LUCTUS_BUTTONS_JOBS = {
    ["Citizen"] = true,
}
--Should only specific usergroups be allowed to use this
LUCTUS_BUTTONS_CHECK_RANKS = false
--Which ranks should be allowed
LUCTUS_BUTTONS_RANKS = {
    ["vip"] = true,
}
--Which ranks can always push the button?
LUCTUS_BUTTONS_ADMINS = {
    ["superadmin"] = true,
}
--List of "buttons", left is Name in the menu, right is actual buttons being pressed ingame
--Buttons can either be MapCreationID or entity name, has to be a list
LUCTUS_BUTTONS_BUTTONS = {
    ["Button1"] = {5416,"LCZ_door11button"},
    ["Button2"] = {4100,"LCZ_door11button"},
}

print("[luctus_buttons] config loaded")

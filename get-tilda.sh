#!/bin/sh
echo "Get & Configure Tilda script"
echo "(c) Thom Hastings 2018 New BSD license"
echo
echo "Installing Tilda..."
sudo apt install -y tilda
echo
echo "Writing Tilda config_0..."
if [ ! -d ~/.config/tilda ]; then
  mkdir -p ~/.config/tilda;
fi
echo 'tilda_config_version="1.4.1"' >> ~/.config/tilda/config_0
echo '# command=""' >> ~/.config/tilda/config_0
echo 'font="Monospace 11"' >> ~/.config/tilda/config_0
echo 'key="F1"' >> ~/.config/tilda/config_0
echo 'addtab_key="<Shift><Control>t"' >> ~/.config/tilda/config_0
echo 'fullscreen_key="F11"' >> ~/.config/tilda/config_0
echo 'toggle_transparency_key="F12"' >> ~/.config/tilda/config_0
echo 'toggle_searchbar_key="<Shift><Control>f"' >> ~/.config/tilda/config_0
echo 'closetab_key="<Shift><Control>w"' >> ~/.config/tilda/config_0
echo 'nexttab_key="<Control>Page_Down"' >> ~/.config/tilda/config_0
echo 'prevtab_key="<Control>Page_Up"' >> ~/.config/tilda/config_0
echo 'movetableft_key="<Shift><Control>Page_Up"' >> ~/.config/tilda/config_0
echo 'movetabright_key="<Shift><Control>Page_Down"' >> ~/.config/tilda/config_0
echo 'gototab_1_key="<Alt>1"' >> ~/.config/tilda/config_0
echo 'gototab_2_key="<Alt>2"' >> ~/.config/tilda/config_0
echo 'gototab_3_key="<Alt>3"' >> ~/.config/tilda/config_0
echo 'gototab_4_key="<Alt>4"' >> ~/.config/tilda/config_0
echo 'gototab_5_key="<Alt>5"' >> ~/.config/tilda/config_0
echo 'gototab_6_key="<Alt>6"' >> ~/.config/tilda/config_0
echo 'gototab_7_key="<Alt>7"' >> ~/.config/tilda/config_0
echo 'gototab_8_key="<Alt>8"' >> ~/.config/tilda/config_0
echo 'gototab_9_key="<Alt>9"' >> ~/.config/tilda/config_0
echo 'gototab_10_key="<Alt>0"' >> ~/.config/tilda/config_0
echo 'copy_key="<Shift><Control>c"' >> ~/.config/tilda/config_0
echo 'paste_key="<Shift><Control>v"' >> ~/.config/tilda/config_0
echo 'quit_key="<Shift><Control>q"' >> ~/.config/tilda/config_0
echo 'title="Tilda"' >> ~/.config/tilda/config_0
echo 'background_color="white"' >> ~/.config/tilda/config_0
echo '# working_dir=""' >> ~/.config/tilda/config_0
echo 'web_browser="x-www-browser"' >> ~/.config/tilda/config_0
echo 'increase_font_size_key="<Control>equal"' >> ~/.config/tilda/config_0
echo 'decrease_font_size_key="<Control>minus"' >> ~/.config/tilda/config_0
echo 'normalize_font_size_key="<Control>0"' >> ~/.config/tilda/config_0
echo '# show_on_monitor=""' >> ~/.config/tilda/config_0
echo 'word_chars="-A-Za-z0-9,./?%&#:_"' >> ~/.config/tilda/config_0
echo 'lines=10000' >> ~/.config/tilda/config_0
echo 'max_width=1324' >> ~/.config/tilda/config_0
echo 'max_height=726' >> ~/.config/tilda/config_0
echo 'min_width=1' >> ~/.config/tilda/config_0
echo 'min_height=1' >> ~/.config/tilda/config_0
echo 'x_pos=298' >> ~/.config/tilda/config_0
echo 'y_pos=27' >> ~/.config/tilda/config_0
echo 'tab_pos=0' >> ~/.config/tilda/config_0
echo 'expand_tabs=false' >> ~/.config/tilda/config_0
echo 'show_single_tab=false' >> ~/.config/tilda/config_0
echo 'backspace_key=0' >> ~/.config/tilda/config_0
echo 'delete_key=1' >> ~/.config/tilda/config_0
echo 'd_set_title=3' >> ~/.config/tilda/config_0
echo 'command_exit=2' >> ~/.config/tilda/config_0
echo 'scheme=3' >> ~/.config/tilda/config_0
echo 'slide_sleep_usec=20000' >> ~/.config/tilda/config_0
echo 'animation_orientation=0' >> ~/.config/tilda/config_0
echo 'timer_resolution=200' >> ~/.config/tilda/config_0
echo 'auto_hide_time=2000' >> ~/.config/tilda/config_0
echo 'on_last_terminal_exit=0' >> ~/.config/tilda/config_0
echo 'prompt_on_exit=false' >> ~/.config/tilda/config_0
echo 'palette_scheme=0' >> ~/.config/tilda/config_0
echo 'non_focus_pull_up_behaviour=0' >> ~/.config/tilda/config_0
echo 'cursor_shape=0' >> ~/.config/tilda/config_0
echo '# show_on_monitor_number=0' >> ~/.config/tilda/config_0
echo '# title_max_length_flag=false' >> ~/.config/tilda/config_0
echo 'title_max_length=25' >> ~/.config/tilda/config_0
echo 'palette = {11822, 13364, 13878, 52428, 0, 0, 20046, 39578, 1542, 50372, 41120, 0, 13364, 25957, 42148, 30069, 20560, 31611, 1542, 38944, 39578, 54227, 55255, 53199, 21845, 22359, 21331, 61423, 10537, 10537, 35466, 58082, 13364, 64764, 59881, 20303, 29298, 40863, 53199, 44461, 32639, 43176, 13364, 58082, 58082, 61166, 61166, 60652}' >> ~/.config/tilda/config_0
echo 'scrollbar_pos=2' >> ~/.config/tilda/config_0
echo 'back_red=0' >> ~/.config/tilda/config_0
echo 'back_green=0' >> ~/.config/tilda/config_0
echo 'back_blue=0' >> ~/.config/tilda/config_0
echo 'text_red=65535' >> ~/.config/tilda/config_0
echo 'text_green=65535' >> ~/.config/tilda/config_0
echo 'text_blue=65535' >> ~/.config/tilda/config_0
echo 'cursor_red=65535' >> ~/.config/tilda/config_0
echo 'cursor_green=65535' >> ~/.config/tilda/config_0
echo 'cursor_blue=65535' >> ~/.config/tilda/config_0
echo 'scroll_history_infinite=false' >> ~/.config/tilda/config_0
echo 'scroll_on_output=false' >> ~/.config/tilda/config_0
echo 'notebook_border=false' >> ~/.config/tilda/config_0
echo 'antialias=true' >> ~/.config/tilda/config_0
echo 'scrollbar=false' >> ~/.config/tilda/config_0
echo 'grab_focus=true' >> ~/.config/tilda/config_0
echo 'above=true' >> ~/.config/tilda/config_0
echo 'notaskbar=true' >> ~/.config/tilda/config_0
echo 'bold=true' >> ~/.config/tilda/config_0
echo 'blinks=true' >> ~/.config/tilda/config_0
echo 'scroll_on_key=true' >> ~/.config/tilda/config_0
echo 'bell=false' >> ~/.config/tilda/config_0
echo 'run_command=false' >> ~/.config/tilda/config_0
echo 'pinned=true' >> ~/.config/tilda/config_0
echo 'animation=true' >> ~/.config/tilda/config_0
echo 'hidden=true' >> ~/.config/tilda/config_0
echo 'set_as_desktop=false' >> ~/.config/tilda/config_0
echo 'centered_horizontally=true' >> ~/.config/tilda/config_0
echo 'centered_vertically=false' >> ~/.config/tilda/config_0
echo 'enable_transparency=true' >> ~/.config/tilda/config_0
echo '# double_buffer=false' >> ~/.config/tilda/config_0
echo 'auto_hide_on_focus_lost=false' >> ~/.config/tilda/config_0
echo 'auto_hide_on_mouse_leave=false' >> ~/.config/tilda/config_0
echo 'title_behaviour=2' >> ~/.config/tilda/config_0
echo 'inherit_working_dir=true' >> ~/.config/tilda/config_0
echo 'command_login_shell=false' >> ~/.config/tilda/config_0
echo 'start_fullscreen=false' >> ~/.config/tilda/config_0
echo 'confirm_close_tab=false' >> ~/.config/tilda/config_0
echo '# image=""' >> ~/.config/tilda/config_0
echo '# scroll_background=false' >> ~/.config/tilda/config_0
echo '# use_image=false' >> ~/.config/tilda/config_0
echo 'transparency=0' >> ~/.config/tilda/config_0
echo 'back_alpha=55039' >> ~/.config/tilda/config_0
echo
echo "Setting Tilda to run on startup..."
if [ ! -d ~/.config/autostart ]; then
  mkdir -p ~/.config/autostart;
fi
echo "[Desktop Entry]" >> ~/.config/autostart/tilda.desktop
echo "Type=Application" >> ~/.config/autostart/tilda.desktop
echo "Exec=tilda" >> ~/.config/autostart/tilda.desktop
echo "Hidden=false" >> ~/.config/autostart/tilda.desktop
echo "X-GNOME-Autostart-enabled=true" >> ~/.config/autostart/tilda.desktop
echo "Name=tilda" >> ~/.config/autostart/tilda.desktop
echo "Comment=drop-down terminal a-la Quake" >> ~/.config/autostart/tilda.desktop
echo "Done!"

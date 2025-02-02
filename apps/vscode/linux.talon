# Microsoft - Visual Studio Code
# see app/vscode.talon for custom voice commands
# see ide.talon for common voice commands
os: linux
app: Code
app: Code - OSS
-
tag(): find_and_replace
tag(): ide
tag(): line_commands
tag(): multiple_cursors
tag(): snippets
tag(): splits
tag(): tabs
# General
action(user.ide_command_palette):
  key(ctrl-shift-p)
action(edit.indent_less):
  key(ctrl-[)
action(edit.indent_more):
  key(ctrl-])
action(app.tab_next):
  key(ctrl-k)
  key(ctrl-pagedown)
action(app.tab_previous):
  key(ctrl-k)
  key(ctrl-pageup)
action(app.tab_close):
  key(ctrl-w)
# Toggleable views
action(user.ide_toggle_fullscreen): 
  user.ide_command_palette()
  insert("View: Toggle Full Screen")
  key(enter)
#action(user.ide_toggle_distraction_free): user.idea("action ToggleDistractionFreeMode")
#action(user.ide_toggle_presentation_mode): user.idea("action TogglePresentationMode")
  
# Folding
action(user.ide_expand_deep):
  key(ctrl-k ctrl-])
action(user.ide_expand_all):
  key(ctrl-k ctrl-j)
action(user.ide_expand_region):
  key(ctrl-shift-])
action(user.ide_collapse_deep):
  key(ctrl-k ctrl-[)
action(user.ide_collapse_all):
  key(ctrl-k ctrl-0)
action(user.ide_collapse_region):
  key(ctrl-shift-[)

#Refactor

action(user.ide_refactor): key(ctrl-shift-r)
action(user.ide_refactor_in_line): key(ctrl-shift-r)
action(user.ide_refactor_rename): key(f2) 
action(user.ide_rename_file): 
  user.ide_command_palette()
  insert("File: Reveal Active File In Side Bar")
  key(enter f2)
action(user.ide_fix_format): 
    # Format Document
    key(alt-shift-f)
# Navigate
action(user.ide_follow):
  # Go to Definition
  key(f12) 

action(user.ide_go_back):
  key(alt-left)

action(user.ide_go_forward):
  key(alt-right)

action(user.ide_select_less): key(shift-alt-left)
action(user.ide_select_more): key(shift-alt-right)

# Terminal
action(user.ide_toggle_terminal):
  # View:Toggle Integrated Terminal
  key(ctrl-`) 

action(user.ide_terminal_new):
  key(ctrl-shift-`)
  # Terminal: Created New Integrated Terminal

action(user.ide_terminal_focus_previous):
  key(alt-left)
  # Terminal: Focus Previous Pane

action(user.ide_terminal_focus_next):
  key(alt-right)
  # Terminal: Focus Next Pane

action(user.ide_terminal_trash):
  key(ctrl-shift-delete)

action(user.ide_terminal_scroll_down):
  key(shift-pgdown)

action(user.ide_terminal_scroll_up):
  key(shift-pgup)

# Code Editor
action(user.ide_toggle_comment):
  key(ctrl-/)

action(user.ide_smart):

  # Trigger Suggest, editor.action.triggerParameterHints
  key(ctrl-space)

action(user.ide_intellisense_suggest_parameters):
  # Trigger Parameter Hints, editor.action.triggerParameterHints
  key(ctrl-shift-space)

action(user.ide_done):
  key(tab)

# Editing
action(user.ide_editor_copylines_down):
  # Copy Line Down, editor.action.copyLinesDownAction
  key(shift-alt-down)

action(user.ide_editor_copylines_up):
    # Copy Line Up, editor.action.copyLinesUpAction
    key(shift-alt-up)

# Workbench Focus Areas
action(user.ide_toggle_project):
  #FIX works manually with caplock on ctrl-shift-E typed works but not key(ctrl-shift-E) -  Linux Mint 19 (Vagrant VirtualBox),
  #key(ctrl-shift-E)
  user.ide_command_palette()
  # View: Show Explorer, workbench.view.explorer
  insert("workbench.files.action.focusFilesExplorer")
  key(enter)

action(user.ide_toggle_git):
  # View: Show SCM, workbench.view.scm
  key(ctrl-shift-g)

action(user.ide_toggle_extensions):
  # View: Show Extensions, workbench.view.extensions
  key(ctrl-shift-x)

action(user.ide_toggle_status_bar):
  user.ide_command_palette()
  insert("View: Toggle Status Bar Visibility")
  key(enter)

action(user.ide_toggle_run):
  # View: Show Run and Debug, workbench.view.debug
  key(ctrl-shift-d)
action(user.ide_toggle_debug):
  # View: Show Run and Debug, workbench.view.debug
  key(ctrl-shift-d)

action(user.ide_toggle_breakpoint):
  # Debug: Toggle Breakpoint, editor.debug.action.toggleBreakpoint
  key(f9)
action(user.ide_step_over):
  # Debug: Step Over, workbench.action.debug.stepOver
  key(f10)
action(user.ide_step_into):
  # Debug: Step Into, workbench.action.debug.stepInto
  key(f11)
action(user.ide_step_out):
  # Debug: Step Out, workbench.action.debug.stepOut
  key(shift-f11)

# Window and File Management
action(app.window_open):
  # New Window, workbench.action.newWindow
  key(ctrl-shift-n)

action(user.ide_create_sibling):
  user.ide_command_palette()
  insert("File: New File")
  key(enter)

action(user.ide_create_file):
  # File: New and Titled File, workbench.action.files.newUntitledFile
  key(ctrl-n)

action(user.ide_reveal_in_file_manager):
  # , workbench.action.files.revealActiveFileInWindows
  key(ctrl-k r)

action(user.ide_find_file):
  # Go to File... , workbench.action.quickOpen
  key(ctrl-p)

# splits.py support begin
action(user.split_window_right):
  user.ide_command_palette()
  insert("workbench.action.moveEditorRight")
  key(enter)
action(user.split_window_left):
  user.ide_command_palette()
  insert("workbench.action.moveEditorLeft")
  key(enter)
action(user.split_window_up):
  user.ide_command_palette()
  insert("workbench.action.moveEditorUp")
  key(enter)
action(user.split_window_down):
  user.ide_command_palette()
  insert("workbench.action.moveEditorDown")
  key(enter)
action(user.split_window_vertically): 
  user.ide_command_palette()
  insert("View: Split Editor")
  key(enter)
action(user.split_window_horizontally): 
  user.ide_command_palette()
  insert("View: Split Editor Orthogonal")
  key(enter)
action(user.split_flip): key(alt-shift-0)
action(user.split_window): key(ctrl-\)
action(user.split_clear): user.split_clear_all()
action(user.split_clear_all): 
  user.ide_command_palette()
  insert("View: Single Column Editor Layout")
  key(enter)
action(user.split_next): key(ctrl-k ctrl-right)
action(user.split_last): key(ctrl-k ctrl-left)
# splits.py support begin

#multiple_cursor.py support begin
#note: vscode has no explicit mode for multiple cursors
action(user.multi_cursor_enable): skip()
action(user.multi_cursor_disable): key(escape)
action(user.multi_cursor_add_above):key(ctrl-alt-up)
action(user.multi_cursor_add_below): key(ctrl-alt-down)
action(user.multi_cursor_select_fewer_occurrences): key(ctrl-u)
action(user.multi_cursor_select_more_occurrences): key(ctrl-d)
action(user.multi_cursor_select_all_occurrences): key(ctrl-shift-l)
#multiple_cursor.py support end

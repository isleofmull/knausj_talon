os: windows
app: Google Chrome
app: chrome.exe
-
tag(): browser
tag(): tabs
#action(browser.address):

action(browser.bookmark):
	key(ctrl-d)

action(browser.bookmark_tabs):
	key(ctrl-shift-d)
	
action(browser.bookmarks):
	key(ctrl-shift-o)
  
action(browser.bookmarks_bar):
	key(ctrl-shift-b)

action(browser.focus_address): 
	key(ctrl-l)
	
#action(browser.focus_page):

action(browser.focus_search):
	browser.focus_address()

action(browser.go):
	browser.focus_address()
	insert(url)
	key(enter)

action(browser.go_blank):
	key(ctrl-n)
	
action(browser.go_back):
	key(alt-left)

action(browser.go_forward):
	key(alt-right)
	
action(browser.go_home):
	key(alt-home)

action(browser.open_private_window):
	key(ctrl-shift-n)

action(browser.reload):
	key(ctrl-r)

action(browser.reload_hard):
	key(ctrl-shift-r)

#action(browser.reload_hardest):
	
action(browser.show_clear_cache):
	key(ctrl-shift-delete)
  
action(browser.show_downloads):
	key(ctrl-j)

#action(browser.show_extensions)

action(browser.show_history):
	key(ctrl-h)
	
action(browser.submit_form):
	key(enter)

#action(browser.title)

action(browser.toggle_dev_tools):
	key(ctrl-shift-i)

# reference commands

(save | download) reference: 
	key(ctrl-shift-s)

[open in] sigh hub:
	key(ctrl-c)
	key(ctrl-l)
	insert('https://sci-hub.tw/')
	key(enter)
	sleep(1000ms)
	key(ctrl-v)
	key(enter)

(add | insert) reference: 
	key(ctrl-alt-c)

#james additions

open docs:
	key(ctrl-l)
	insert('https://docs.google.com/')
	key(delete)
	key(enter)
	
open scholar:
	key(ctrl-l)
	insert('https://scholar.google.com/')
	key(delete)
	key(enter)

open pub med:
	key(ctrl-l)
	insert('https://pubmed.ncbi.nlm.nih.gov/')
	key(delete)
	key(enter)

open gmail:
	key(ctrl-l)
	insert('www.gmail.com')
	key(delete)
	key(enter)

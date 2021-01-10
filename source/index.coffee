# include include/admin.ahk
# include include/head.ahk
# include include/js-shim.ahk

# declare

$ = $
clearInterval = clearInterval
clearTimeout = clearTimeout
setInterval = setInterval
setTimeout = setTimeout

# variable

state = {}
timer = {}
ts = {}

# include module/*
# include skill/*

# execute

client = new ClientX()
client.watch()

# binding

$.on 'alt + f4', ->
  $.beep()
  client.reset()
  $.exit()

$.on 'ctrl + f5', ->
  $.beep()
  client.reset()
  $.reload()

# binding
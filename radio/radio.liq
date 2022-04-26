#!/usr/bin/liquidsoap

# Music
myplaylist = mksafe(playlist("./playlist.pls"))

applause = mksafe(playlist("./applause.pls"))

# Start building the feed with music
radio = random(weights = [1, 1],[applause, myplaylist])

# Stream it out
output.icecast(%mp3,
  host = "192.168.223.226", port = 8000,
  password = "hackme", mount = "radio",
  radio)

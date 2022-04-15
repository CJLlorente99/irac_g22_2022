#!/usr/bin/liquidsoap

# Music
myplaylist = mksafe(playlist("./playlist.pls"))

# Start building the feed with music
radio = myplaylist

# Stream it out
output.icecast(%vorbis,
  host = "localhost", port = 8000,
  password = "hackme", mount = "basic-radio.ogg",
  radio)
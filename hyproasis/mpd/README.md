# MPD

# Utilities

- mpDris2 - for mpris (playerctl) presence.

# Intallation

```bash
systemctl --user enable mpd.service
systemctl --user start mpd.service

systemctl --user enable mpDris2.service
systemctl --user start mpDris2.service

# check if it's working
systemctl --user status mpd.service
systemctl --user status mpDris2.service
```

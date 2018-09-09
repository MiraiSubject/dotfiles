#!/usr/local/bin/python3
import os
import re
from datetime import datetime

# Determine city
location_raw = os.popen('/usr/local/bin/whereami').read()
location_line = location_raw.splitlines()[3]
city = location_line.split(',')[1][1:]

# Determine sunrise/sunset
#sun_raw = os.popen('/usr/local/bin/solunar -c %s' % city).read()
sun_raw = os.popen('/usr/local/bin/solunar -c Europe/Amsterdam').read()
sunrise = re.search('Sunrise: (\d*:\d*)', sun_raw).group(1)
sunset = re.search('Sunset: (\d*:\d*)', sun_raw).group(1)
sunrise = datetime.strptime(sunrise, '%H:%M').time()
sunset = datetime.strptime(sunset, '%H:%M').time()
present = datetime.now().time()

set_wallpaper_script = """/usr/bin/osascript<<END
tell application "System Events"
    tell every desktop
        set picture to "%s"
    end tell
end tell
END"""

# Return 0 if sun is down
if present < sunrise or present > sunset:
    os.popen(set_wallpaper_script%'/Users/subject/Pictures/WallpaperMac/night.png')
    os.popen('dark-mode on')
    exit(0)
else:
    os.popen(set_wallpaper_script%'/Users/subject/Pictures/WallpaperMac/day.png')
    os.popen('dark-mode off')
    exit(1)

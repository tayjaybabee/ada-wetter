# ada-wetter
_ADAhome_ weather and environment sensor applet

## What it does:

This applet for the ADA (A.I. Driven Automation) suite interfaces with an external (or local) peripheral (yet to be named) that contains Pressure, Humidity, and temperature sensors.

It also connects to the DarkSky API using your geolocation data (using another API to translate user addresses into geocodes) to query weather data.

## Planned Features:

* Wetter will have a plugin system which allows one to interface with their smart thermostats through the Wetter app
* Stores data for self-learning, graphing, caching, ADAmind-sync (our Artificially-intelligent Domestic Assistant global stat sharing which plans to use gathered statistics to improve the intelligence of ADAhome)
* ADAmind-sync will be disabled by default, user can opt-in and receive more features.
* Middle-Panel will show animation which matches the user's current weather status. This middle-panel may also contain a bigger, coloured version of what the buttom grid (DarkSky readout) reads
* Receive 5-day forecast
* Receive forecast for particular future day/hour
* Receive past weather data, and have the ability to view your past sensor data for up to a year (longer on <future web domain> if end-user opts into ADAmind-sync and also links their ADAhome device to their inspyre.tech account)
* Share data with ADAhome (or other compatible) devices securely over your internal network for them to use in making operational decisions. (For example: Setting your automatic blinds on your south-facing windows based off of weather data, setting your smart water-heater temp based on outside internal/external temps, turning on humidifiers when interior relative humidity drops below a certain percentage, closing automatic windows when Wetter detects rain, etc) Linking multiple homes would require ADAmind-sync to be enabled as well as having your ADAhome Hub device linked to your inspyre.tech account.
* An optional weather animation on the Adafruit SenseHAT's 8x8 LED matrix
* Should ship with a plugin for eveIRC (an IRC bot created by Inspyre Technologies) that will allow for data-readouts and some system control via IRC. The plan would be that every separate feature can be disabled/enabled on the fly, and maybe even grouped for different profiles. (For example: One could have a setting that enables every command that allows read-only access, but disables all commands that allow modification or control that they enable when they are away from home)
* Send SMS alerts if interior sensors or DarkSky data reveal something the user should be alerted about.(to extend this idea beyond the scope of this project, while still staying in it's realm of influence; the Wetter app could interface with other ADAhome devices to determine if you're home and then decide if an SMS should be sent or not, depending on user settings)
* Have the ability to set automatic data-refresh times for both interior sensors and DarkSky API data individually
* (BIG MAYBE) ADAConnections (**may not exist in future, just a concept**) will allow you to tab through the local weather data of all your <insert branded term for 'friends' here>, even possibly revealing if your friend has SMS notifications turned on in the event of an extreme weather event or other event within the scope of it's sensors. (to extend this ide3a beyond the scope of this project while still staying in it's realm of influence; end-users could set their devices to alert certain <insert branded equivelant of 'friends' here> (given certain cases) through their friends ADAhome Hubs/SMS if both users have their devices linked on ADAmind-sync, are connected as <insert that branded term>, and have both agreed to the third-party notification
* A tab which contains national and local weather-related news from several sources (ideally customizable by the user)
* Automatic update feature which asks user before updating, backs up current application/settings, self-installs the update, all while (idealy) every clearing your settings or data, no matter the size or complexity of the version update
* Web interface
* API for other ADA widgets to connect to, and for developers of other applications to use to manipulate/read Wetter-related items
  
## In the works:

* Image in middle-panel reflecting local weather
* DarkSky API reading
* senseHat manipulation and reading
  
## Already Implemented

* GUI

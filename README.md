# myipwtf
api for myip.wtf ip info site

# Example
```nim
import asyncdispatch, myipwtf, json
let data= waitFor my_ip()
echo data["YourFuckingIPAddress"].getStr()
echo data["YourFuckingLocation"].getStr()
echo data["YourFuckingISP"].getStr()
echo data["YourFuckingCity"].getStr()
echo data["YourFuckingCountry"].getStr()
```

# Launch (your script)
```
nim c -d:ssl -r  your_app.nim
```

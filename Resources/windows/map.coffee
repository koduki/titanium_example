currentWindow = Titanium.UI.currentWindow

Ti.Geolocation.preferredProvider = "gps"
locationView = Titanium.Map.createView
   mapType: Titanium.Map.STANDARD_TYPE
   region:
           latitude:35
           longitude:130
           latitudeDelta: 0.8
           longitudeDelta:0.8
   animate:true
   regionFit:true
   userLocation:true

currentWindow.add locationView

label1 = Ti.UI.createLabel
   left:45
   top:13
   height:42
   width:240
   text:'hello'

currentWindow.add label1

getCurrentLocation = (e) ->
        locationView.setLocation
           latitude:e.coords.latitude
           longitude:e.coords.longitude
           latitudeDelta: 0.04
           longitudeDelta:0.04

        label1.text = e.coords.latitude

Ti.Android.currentActivity.onCreateOptionsMenu = (e) ->
   Ti.API.debug 'onCreateOptionsMenu'
   menu = e.menu

   menu1 = menu.add
      title:'現在位置'
      itemId:0

   menu2 = menu.add
      title:'menu2'
      itemId:1

   menu1.addEventListener "click", (e) ->
           label1.text = 'add event'
           Ti.Geolocation.purpose = "GPS demo"
           Ti.Geolocation.accuracy = Ti.Geolocation.ACCURACY_BEST
           Ti.Geolocation.getCurrentPosition( getCurrentLocation)

   menu2.addEventListener "click", (e) ->
           Ti.Geolocation.removeEventListener("location", getCurrentLocation)

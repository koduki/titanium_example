currentWindow = Titanium.UI.currentWindow
currentLatitude = -1
currentLongitude = -1
getCurrentLocation = (e) ->
        currentLatitude = e.cords.latitude
        currentLongitude = e.cords.longitude

locationView = Titanium.Map.createView
   mapType: Titanium.Map.STANDARD_TYPE
   region:
           latitude:40.0
           longitude:130
           latitudeDelta: 30
           longitudeDelta:30
   animate:true
   regionFit:true

currentWindow.add locationView

activity = Titanium.Android.currentActivity
b1 = Ti.UI.createButton
   title:'Open Window'
   height:'auto'
   width:'auto'

b1.addEventListener 'click', (e) ->
   w = Ti.UI.createWindow
         background:'blue'
         navBarHidden:false
         activity:
                 onCreateOptionsMenu : (e) ->
                         menu2 = e.menu
                         m1 = menu.add { title:'Close Window' }
                         m1.setIcon(Titanium.Android.R.drawble.ic_menu_close_clear_cancel)
                         m1.addEventListener 'click', (e) -> 
                                 Ti.UI.currentWindow.close
   l = Ti.UI.createLabel
         background:'white'
         color:'black'
         width:'auto'
         height:'auto'
         text:'Press the menu'

   w.add l
   w.open
      animated:true

cureentWindow.add b1

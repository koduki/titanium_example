Titanium.UI.setBackgroundColor '#000'

tabGroup = Titanium.UI.createTabGroup()

tab1 = Titanium.UI.createTab
   icon:'KS_nav_views.png'
   title:'カメラ'
   window:
      Titanium.UI.createWindow
         url:"windows/camera.js"

tab2 = Titanium.UI.createTab
   icon:'KS_nav_views.png'
   title:'地図'
   window:
      Titanium.UI.createWindow
         url:"windows/map.js"

tabGroup.addTab tab1
tabGroup.addTab tab2

tabGroup.open()


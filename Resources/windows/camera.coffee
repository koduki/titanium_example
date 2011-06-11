Titanium.Media.showCamera
  success: (event) -> 
           win = Titanium.UI.currentWindow

           imageView = Titanium.UI.createImageView
               image: event.media
               width: win.width
               height: win.height

           win.add imageView

  cancel: () ->

  error: (error) ->
          dialog = Titanium.UI.createAlertDialog
            title: 'Camera error'

          if Titanium.Media.NO_CAMERA == error.code
                  dialog.setMessage('Device dose not have camera.')
          else
                  dialog.setMessage('Unexpected error:' + error.code)

          dialog.show

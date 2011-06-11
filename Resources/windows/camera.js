Titanium.Media.showCamera({
  success: function(event) {
    var imageView, win;
    win = Titanium.UI.currentWindow;
    imageView = Titanium.UI.createImageView({
      image: event.media,
      width: win.width,
      height: win.height
    });
    return win.add(imageView);
  },
  cancel: function() {},
  error: function(error) {
    var dialog;
    dialog = Titanium.UI.createAlertDialog({
      title: 'Camera error'
    });
    if (Titanium.Media.NO_CAMERA === error.code) {
      dialog.setMessage('Device dose not have camera.');
    } else {
      dialog.setMessage('Unexpected error:' + error.code);
    }
    return dialog.show;
  }
});
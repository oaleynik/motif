Vue.component('color-picker-input', {
  template: JST['templates/color-picker-input'](),
  props: {
    color: {
      type: String,
      default: null
    }
  }
  // compiled: function() {
  //   var that = this;

  //   that.colorPicker = ColorPicker(that.$el.querySelector('.cp-small'), function(hex, hsv, rgb) {
  //     that.color = hex.substr(1);
  //   });

  //   that.colorPicker.setHex('#' + that.color);
  // }
});

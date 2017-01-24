export function setAllResourceTypes() {
  var firstResourceType = $(".resource_type_dropdown")[0];
  var selected_options = [];
  for (var i = 0; i < firstResourceType.length; i++) {
    if (firstResourceType.options[i].selected) {
      selected_options.push(firstResourceType.options[i].value);
    }
  }
  $(".resource_type_dropdown").each(function(index, element) {
    for(var i=0; i< this.length; i++) {
      if ($.inArray(this.options[i].value, selected_options) > -1) {
          this.options[i].selected = true;
      }
    }
  });
  return false;
}

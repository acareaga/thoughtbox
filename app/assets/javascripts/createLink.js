function createLink() {
  $("#create-link").on("click", function() {
    var linkParams = {
      title: $('#link-title').val(),
      url: $('#link-url').val()
    };

    $.ajax({
      type:    "POST",
      url:     "/api/v1/links",
      data:    linkParams,
      success: function(newLink) {
        renderLink(newLink)
        resetForm();
      },
      error: function(xhr) {
        console.log(xhr.responseText)
      }
    })
  })
};

function resetForm(){
  $('#link-title').val('');
  $('#link-url').val('');
};

function editLinkTitle() {
  $('#link-index').delegate('#link-title', 'keydown', function(event) {
    var enterKeyHit = event.which == 13

    if (enterKeyHit) {
      var link = this.closest('.link')
      var linkId = $(link).attr('data-id')
      var data = { title: this.textContent }

      event.preventDefault();
      this.blur();

      $.ajax({
        type: 'PUT',
        url: '/api/v1/links/' + linkId,
        data: data
      })
    }
  })
};

function editLinkUrl() {
  $('#link-index').delegate('#link-url', 'keydown', function(event) {
    var enterKeyHit = event.which == 13

    if (enterKeyHit) {
      var link = this.closest('.link');
      var linkId = $(link).attr('data-id');
      var data = { url: this.textContent };

      event.preventDefault();
      this.blur();

      $.ajax({
        type: 'PUT',
        url: '/api/v1/links/' + linkId,
        data: data
      })
    }
  })
};

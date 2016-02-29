var readLink = {
  undread: 'read',
  read: 'unread'
};

var unreadLink = {
  read: 'read',
  unread: 'read',
};

function increaseReadStatus() {
  $('#link-index').delegate('.increase-link-read', 'click', function() {
    var link    = $(this).closest('.link');
    var linkId  = link.attr('data-id');
    var status = link.find('#link-read');
    var statusText = status.text();
    var data = { read: readLink[statusText] };

    $.ajax({
      type: 'PUT',
      url: '/api/v1/links/' + linkId,
      data: data,
      success: function() {
        status.text(readLink[statusText]);
      }
    })
  })
};

function decreaseReadStatus() {
  $('#link-index').delegate('.decrease-link-read', 'click', function() {
    var link    = $(this).closest('.link');
    var linkId  = link.attr('data-id');
    var status = link.find('#link-read');
    var statusText = status.text();
    var data = { read: unreadLink[statusText] };

    $.ajax({
      type: 'PUT',
      url: '/api/v1/links/' + linkId,
      data: data,
      success: function() {
        status.text(unreadLink[statusText]);
      }
    })
  })
};

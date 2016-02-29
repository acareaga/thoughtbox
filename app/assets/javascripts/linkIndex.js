function fetchLinks() {
  $.ajax({
    type: "GET",
    url:  "/api/v1/links",
    success: function(links) {
      $.each(links, function(index, link) {
        renderIndex(link)
      })
    },
    error: function(xhr) {
      console.log(xhr.responseText)
    }
  })
};

function renderIndex(link) {
  $("#link-index").append(
    "<tbody class='link' data-id='"+ link.id +"' link-read='"+ link.read +"'>"
      +"<td id='link-title' contenteditable='true'>"+ link.title +"</td>"
      +"<td id='link-url' contenteditable='true'>"+ link.url +"</td>"
      +"<td id='link-read'>"+ link.read +"</td>"
      +"<td><a class='waves-effect waves-teal btn-flat increase-link-read'> + </a></td>"
      +"<td><a class='waves-effect waves-teal btn-flat decrease-link-read'> - </a></td>"
      +"<td><a class='waves-effect waves-teal btn-flat' id='delete-link'>Delete</a></td>"
    +"</tbody>"
  )
};

function renderLink(link) {
  $("#link-index").prepend(
    "<tbody class='link' data-id='"+ link.id +"' link-read='"+ link.read +"'>"
      +"<td id='link-title' contenteditable='true'>"+ link.title +"</td>"
      +"<td id='link-url' contenteditable='true'>"+ link.url +"</td>"
      +"<td id='link-read'>"+ link.read +"</td>"
      +"<td><a class='waves-effect waves-teal btn-flat increase-link-read'> + </a></td>"
      +"<td><a class='waves-effect waves-teal btn-flat decrease-link-read'> - </a></td>"
      +"<td><a class='waves-effect waves-teal btn-flat' id='delete-link'>Delete</a></td>"
    +"</tbody>"
  )
};

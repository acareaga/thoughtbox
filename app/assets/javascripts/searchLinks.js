function linkSearch() {
  $('#link-search').keyup(function(event) {
    var searchTerm = $(this).val().toLowerCase();
    var links      = $('#link-index').children();

    links.removeClass('invisible');

    var hiddenLinks = links.filter(function() {
      var titleAndUrlText = $(this).find('#link-title, #link-url')
                                   .text()
                                   .toLowerCase();
      return !(titleAndUrlText.includes(searchTerm));
    });

    hiddenLinks.addClass('invisible');
  })
};

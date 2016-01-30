$(document).ready(function() {
  $('#take-survey-question').on('submit', function(event){
      event.preventDefault();

      var request = {
        url: $(event.target).attr('action'),
        method: 'post',
        data: $(event.target).serialize()
      }

      $.ajax(request).done(function(response){
        $('#taking-survey').html(response);
      }).fail(function(response){
        console.log(response);
      });
  });
});

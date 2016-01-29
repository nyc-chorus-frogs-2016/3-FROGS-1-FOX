$(document).ready(function() {
  $('#new-survey-form').on('submit',function(event){
    event.preventDefault();

    var request = {
      url: $(event.target).attr('action'),
      method: 'post',
      data: $(event.target).serialize()
    }

    $.ajax(request).done(function(response){
      $('#create-survey').html(response);
    }).fail(function(response){
      console.log(response)
    })

  });

  $('#create-survey').on('submit', '#add-question',function(event){
    event.preventDefault();
    var request = {
      url: $(event.target).attr('action'),
      method: 'post',
      data: $(event.target).serialize()
    };
    $.ajax(request).done(function(response){
      $('#create-survey').html(response);
    }).fail(function(response){
      console.log(response)
    })

  });

  $('#create-survey').on('submit', '.add-choice',function(event){
    event.preventDefault();
    var request = {
      url: $(event.target).attr('action'),
      method: 'post',
      data: $(event.target).serialize()
    };
    $.ajax(request).done(function(response){
      $('#inside-div').append(response);
    }).fail(function(response){
      console.log(response);
    })

  });

});

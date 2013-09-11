
$(document).ready(function() { 


	$("#search").select2({
		
		minimumInputLength: 2,
    multiple: true,
    	placeholder: "Search for an ingredient",
        allowClear: true,
        ajax: {
          url: "/ingredients.json",
          dataType: 'json',
          data: function(search) {
          	return {
          		term: search
          	};
          },

          results: function(data,page) {
          	return { results: data }
          }

        },
        formatResult: function(data) { 
          return data.name ; },
         formatSelection: function(data) {
          return data.name; 
        }
    });

    $("#submit").click(function() {
      var selected = $("#search").select2('data');
      $.ajax({
        type: "POST",
        url: "http://localhost:3000/search",
        data: {ingredient_id : [1,2,3]},
        success: function(data) {
          $(".searchresults").html(data)
        }
      });
    });
});

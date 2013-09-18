
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

  $("#ingredient_form").submit(function() {
      var selected = $("#search").select2('data');
      var ingredient_array = new Array();
      for (var i = 0; i < selected.length; i++) { 
        ingredient_array[i] = selected[i].id
      } 
      var hiddenField = document.createElement("input");
      hiddenField.setAttribute("type", "hidden");
      hiddenField.setAttribute("id", "ingredient_id");
      hiddenField.setAttribute("name", "ingredient_id");
      hiddenField.setAttribute("value", ingredient_array);
      $('#ingredient_form').append(hiddenField);
    });
});


function onFocus () {
    document.getElementById("message").style.display = "block";
  }
  
  // When the user clicks outside of the password field, hide the message box
  function onBlur() {
    document.getElementById("message").style.display = "none";
  }
  
  // When the user starts to type something inside the password field
  function onKeyUp() {
    // Validate lowercase letters

    var myInput = document.getElementById("bugdesc");
    var letter = document.getElementById("maxSize");
	var minletter = document.getElementById("minSize");
    var button = document.getElementById("subrep");

    var ctr1 = 0;
	var ctr = 0;

    // Validate length
    if(myInput.value.length <= 350) {
      letter.classList.remove("invalid");
      letter.classList.add("valid");
      ctr =1;
    } else {
      letter.classList.remove("valid");
      letter.classList.add("invalid");
      ctr =0;
    }

	    if(myInput.value.length > 19) {
      minletter.classList.remove("invalid");
      minletter.classList.add("valid");
      ctr1 =1;
    } else {
      minletter.classList.remove("valid");
      minletter.classList.add("invalid");
      ctr1 =0;
    }

    if (ctr+ctr1 == 2) {
        button.disabled = false;
    }

    else
        button.disabled = true;

  }
document.addEventListener("DOMContentLoaded", function() {
    const step1Form = document.getElementById("new_user");
    // const step2Form = document.getElementById("step2-form");
  
      const email = sessionStorage.getItem("email");
      step1Form.querySelector("input[name='user[email]']").value = email;
      // Store the email in a session or a JavaScript variable
      // For example, using sessionStorage:
      
    
      // Hide step1 form, show step2 form
    //   step1Form.style.display = "none";
    //   step2Form.style.display = "block";
  });
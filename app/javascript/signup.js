document.addEventListener("DOMContentLoaded", function() {
    const step1Form = document.getElementById("new_user");
    // const step2Form = document.getElementById("step2-form");
  
    step1Form.addEventListener("submit", function(e) {
      e.preventDefault();
      const email = step1Form.querySelector("input[name='user[email]']").value;
      // Store the email in a session or a JavaScript variable
      // For example, using sessionStorage:
      
      sessionStorage.setItem("email", email);
      window.location.href = "/signup/step2";
      // Hide step1 form, show step2 form
    //   step1Form.style.display = "none";
    //   step2Form.style.display = "block";
    });
  });
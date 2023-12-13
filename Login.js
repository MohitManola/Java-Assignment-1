function authenticateUser() {
    const loginId = document.getElementById('login_id').value;
    const password = document.getElementById('password').value;
    	 
    	 if(loginId=="test@sunbasedata.com" && password=="Test@123"){
			 alert('Login successful!');
			 window.location.href = 'Login.jsp';
		 }
    	 else {
                alert('Incorrect username or password. Please try again.');
            }
    
    }
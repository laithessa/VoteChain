const loginForm = document.getElementById('loginForm');

loginForm.addEventListener('submit', (event) => {
  event.preventDefault();

  const voter_id = document.getElementById('voter-id').value;
  const password = document.getElementById('password').value;

  const url = new URL('http://127.0.0.1:8000/login');
  url.searchParams.append('voter_id', voter_id);
  url.searchParams.append('password', password);

  const headers = {
    'Authorization': `Bearer ${voter_id}`,  // Assuming you are using voter_id as a token, adjust if needed
  };

  fetch(url, {
    method: 'GET',
    headers: headers,
  })
  .then(response => {
    if (response.ok) {
      return response.json();
    } else {
      throw new Error(`Login failed with status: ${response.status}`);
    }
  })
  .then(data => {
    if (data.role === 'admin') {
      localStorage.setItem('jwtTokenAdmin', data.token);
      window.location.replace(`http://127.0.0.1:8080/admin.html?Authorization=Bearer ${localStorage.getItem('jwtTokenAdmin')}`);
    } else if (data.role === 'user') {
      localStorage.setItem('jwtTokenVoter', data.token);
      window.location.replace(`http://127.0.0.1:8080/index.html?Authorization=Bearer ${localStorage.getItem('jwtTokenVoter')}`);
    }
  })
  .catch(error => {
    console.error('Login failed:', error.message);
    const errorMessage = document.getElementById('error-message');
    if (errorMessage) {
      errorMessage.textContent = 'Please enter the correct password.';
      errorMessage.style.display = 'block';
    }
  });
});

// Add this line to hide the error message when the user starts typing
document.getElementById('password').addEventListener('input', () => {
  const errorMessage = document.getElementById('error-message');
  if (errorMessage) {
    errorMessage.style.display = 'none';
  }
});

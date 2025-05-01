const registrationForm = document.getElementById('registrationForm');

registrationForm.addEventListener('submit', (event) => {
  event.preventDefault();

  const voter_id = document.getElementById('voter_id').value;
  const role = document.getElementById('role').value;
  const name = document.getElementById('name').value;
  const password = document.getElementById('password').value;
  const dob = document.getElementById('dob').value;
  const gender = document.getElementById('gender').value;
  const ph_number = document.getElementById('ph_number').value;
  const email_ID = document.getElementById('email_ID').value;

  const data = {
    voter_id,
    role,
    name,
    password,
    dob,
    gender,
    ph_number,
    email_ID
  };

  fetch('http://127.0.0.1:8000/register', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body: JSON.stringify(data)
  })
  .then(response => {
    if (response.ok) {
      return response.json();
    } else {
      throw new Error(`Registration failed with status: ${response.status}`);
    }
  })
  .then(data => {
    console.log('Registration successful:', data);
    alert('Registration successful!');
  })
  .catch(error => {
    console.error('Registration failed:', error.message);
    alert('Registration failed!');
  });
});
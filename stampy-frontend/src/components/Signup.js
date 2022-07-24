import React, { useState } from "react";

function Signup({handleLogin}) {
  const [firstName, setFirstName] = useState("First Name");
  const [lastName, setLastName] = useState("Last Name");
  const [email, setEmail] = useState("Email");
  const [password, setPassword] = useState("Password");
  const [passwordConfirmation, setPasswordConfirmation] = useState("Password Confirmation");
  const [errors, setErrors] = useState([])

  const handleSubmit = (event) => {
    event.preventDefault();

    const formData = {
      first_name: firstName,
      last_name: lastName,
      email: email,
      password: password,
      password_confirmation: passwordConfirmation,
    };
    console.log("formData", formData);

    const requestOptions = {
      method: 'PUT',
      headers: {'Content-Type': 'application/json'},
      body: JSON.stringify(formData)
    }

    fetch(`http://localhost:3000/users`, {requestOptions}, {withCredentials: true})
    .then(response => {
      console.log('response', response)
      if (response.formData.status === 'created') {
        handleLogin(response.data)

      } else {
        setErrors({"errors": response.data.errors})
      }
    })
    .catch(error => console.log('api errors:', error))


  };

  const handleFirstName = (event) => {
    setFirstName(event.target.value);
  };
  const handleLastName = (event) => {
    setLastName(event.target.value);
  };
  const handleEmail = (event) => {
    setEmail(event.target.value);
  };
  const handlePassword = (event) => {
    setPassword(event.target.value);
  };
  const handlePasswordConfirmation = (event) => {
    setPasswordConfirmation(event.target.value);
  };

  return (
    <div className="border">
      <h2>Signup Component</h2>
      <form className="" onSubmit={handleSubmit}>
        <label>
          First Name
          <input type="text" value={firstName} onChange={handleFirstName} />
        </label>
        <label>
          Last Name
          <input type="text" value={lastName} onChange={handleLastName} />
        </label>
        <label>
          Email
          <input type="text" value={email} onChange={handleEmail} />
        </label>
        <label>
          Password
          <input type="password" value={password} onChange={handlePassword} />
        </label>
        <label>
          Password Confirmation
          <input
            type="password"
            value={passwordConfirmation}
            onChange={handlePasswordConfirmation}
          />
        </label>
        <input type="submit" value={"Submit"} />
      </form>
    </div>
  );
}

export default Signup;

import React, { useState } from "react";

function Signup() {
  const [firstName, setFirstName] = useState("First Name");
  const [lastName, setLastName] = useState("Last Name");
  const [email, setEmail] = useState("Email");
  const [password, setPassword] = useState("Password");

  const handleSubmit = (event) => {
    event.preventDefault();

    const formData = {
      first_name: firstName,
      last_name: lastName,
      email: email,
      password: password,
    };
    console.log("formData", formData);
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

  return (
    <div className="border">
      <h2>Signup Component</h2>
      <form onSubmit={handleSubmit}>
        <label>
          First Name
          <input type="text" value={firstName} onChange={handleFirstName} />
        </label>
        <input type="submit" value={"Submit"} />
      </form>
    </div>
  );
}

export default Signup;

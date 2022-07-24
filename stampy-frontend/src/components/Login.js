import React from 'react'

function Login({handleLogin, handleLogout}) {

  return (
    <div className='border'>
      <h2>Login Component</h2>
      <button onClick={handleLogin}>
            Log In
      </button>
      <button onClick={handleLogout}>
            Log Out
      </button>
    </div>
  )
}

export default Login
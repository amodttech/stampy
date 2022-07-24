import { useState, useEffect } from 'react';
import './index.css'
import Home from './components/Home'
import Login from './components/Login'
import Signup from './components/Signup'

function App() {

    // State
    const [loggedIn, setLoggedIn] = useState(false)

    // Handlers
    const handleLogin = () => {
        setLoggedIn(true)
    }

    const handleLogout = () => {
        setLoggedIn(false)
    }

    const loginStatus = () => {
        fetch(`http://localhost:3000/logged_in`, {withCredentials: true})
        .then(response => {
            if (loggedIn) {
                handleLogin(response)
                console.log('loggedin')
            } else {
                handleLogout()
            }
        })
        .catch(error => console.log('api errors:', error))
    }
  return (
    <div className='app-border'>
        <Home logged_in={loggedIn}/>
        <Login handleLogin={handleLogin} handleLogout={handleLogout}/>
        <Signup />
    </div>
  );
}

export default App;
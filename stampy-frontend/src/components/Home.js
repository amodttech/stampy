import React from 'react'

function Home({logged_in}) {
  return (
    <div className='border'>
      <h1>Home</h1>
      <p>
        user {logged_in ? `is` : `is NOT`} logged in.
      </p>
    </div>
  )
}

export default Home
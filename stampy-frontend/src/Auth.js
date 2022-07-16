import React from 'react'

function Auth() {
  return (
    <div className='Auth-form-container'>
        <form className='Auth-form'>
            <div className='Auth-form-content'>
                <h3 className='Auth-form-title'>Sign In</h3>
                <div className='form-group mt-3'>
                    <label>Email Address</label>
                    <input 
                        type="email"
                        className='form-control mt-1'
                        placeholder='Enter Email'
                    />
                </div>
                <div className='form-group mt-3'>
                    <label>Password</label>
                    <input 
                        type="password"
                        className='form-control mt-1'
                        placeholder='Enter Password'
                    />
                </div>
            </div>
        </form>
    </div>
  )
}

export default Auth
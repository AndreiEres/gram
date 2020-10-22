import * as React from 'react'

export const Nav: React.FC = () => {
  const user = window.application.user

  return (
    <nav className='d-flex justify-content-between'>
      <div className='font-weight-bold'>Gram</div>
      {user ? (
        <div>
          <span className='pr-3'>{user.name}</span>
          <a href='auth/logout'>Log Out</a>
        </div>
      ) : (
        <a href='/auth/github'>Sign In with Github</a>
      )}
    </nav>
  )
}

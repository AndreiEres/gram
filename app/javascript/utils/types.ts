declare global {
  interface Window {
    application: TApplication
  }
}

export type TApplication = {
  user: TUser
}

export type TUser = {
  email: string
  name: string
  image: string
}

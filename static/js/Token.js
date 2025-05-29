const TokenKey = 'Admin-Token-PythonStyle'

const  getToken = () => {
  return Cookies.get(TokenKey)
}

const setToken = (token) => {
  return Cookies.set(TokenKey, token)
}

const removeToken = () => {
  return Cookies.remove(TokenKey)
}

const  getPermissionToken = () => {
  return Cookies.get('PERM')
}

const setPermissionToken = (token) => {
  return Cookies.set('PERM', token)
}

const  getUtypeToken = () => {
  return Cookies.get('type')
}

const setUtypeToken = (token) => {
  return Cookies.set('type', token)
}
const removeUtypeToken = () => {
  return Cookies.remove('type')
}

const removePermissionToken = () => {
  return Cookies.remove('PERM')
}

class LoginPage
  include PageObject

  page_url "https://biser-test.herokuapp.com"
  text_field(:username, :id => 'user_email')
  text_field(:password, :id => 'user_password')
  checkbox(:remember, :id => 'user_remember_me')
  button(:loginButton, :name => 'commit')

  def login(username, password, rememberme = nil)
    if rememberme != nil
      check_remember
    end
    self.username = username
    self.password = password
    loginButton
  end
end
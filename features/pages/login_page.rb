class LoginPage
  include PageObject

  page_url "https://biser-test.herokuapp.com"
  text_field(:username, :id => 'user_email')
  text_field(:password, :id => 'user_password')
  button(:loginButton, :name => 'commit')

  def login(username, password)
    self.username = username
    self.password = password
    self.loginButton
  end
end
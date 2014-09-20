class RegisterPage
  include PageObject

  page_url "https://biser-test.herokuapp.com/users/sign_up"
  text_field(:email, :id => "user_email")
  text_field(:password, :id => "user_password")
  text_field(:confirmPassword, :id => "user_password_confirmation")
  text_field(:companyName, :id => "user_company_name")
  text_field(:user_oib, :id => "user_oib")
  button(:submit, :name => "commit")
  li(:error, :xpath => "//div[@id='error_explanation']//ul//li")
  ul(:error_group, :xpath => "//div[@id='error_explanation']//ul")


  def register(status, excludeElement = nil)
    if status == 'valid'
      self.email = "test" + Time.now.to_i.to_s + "@test.com"
      self.password = "password"
      self.confirmPassword = "password"
      self.companyName = "test"
      self.user_oib = Time.now.to_i.to_s + rand(0-9).to_s

      case excludeElement
        when 'user_email'
          self.email = ""
        when 'user_password'
          self.password = ""
        when 'user_password_confirmation'
          self.confirmPassword = ""
        when 'user_company_name'
          self.companyName = ""
        when 'user_oib'
          self.user_oib = ""
      end
      self.submit
    else
      self.email = "invalidEmail"
      self.password = "inv"
      self.confirmPassword = "inv"
      self.companyName = ""
      self.user_oib = "12345"
      self.submit
    end
  end
end
class LoginPage < SitePrism::Page
    # set_url 'uas/request-password-reset?trk=homepage-basic_signin-form_forgot-password-link'
    set_url ''
    element :emailField, :id, "session_key"
    element :passwordField, :id, "session_password"
    element :loginButton, :xpath, "//button[@class='sign-in-form__submit-button']"

    def userLogin(email,password)
        emailField.set (email)
        passwordField.set (password)
        loginButton.click
    end
end
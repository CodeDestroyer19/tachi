class UserMailer < ApplicationMailer
    default from: email_address_with_name('info@goofyahh.com', 'Manifesto')

    def welcome_email
        @user = params[:user]
        @url = 'http://localhost:3000/users/new'
        
        begin
            # attachments.inline['favicon.ico'] = File.read('http://localhost:3000/favicon.ico')
            mail(to: email_address_with_name(@user.email, @user.name), subject: "It is time to change the future", template_path: "user_mailer", template_name: 'welcome_email')
        rescue => exception
            puts "Error ======>> " + exception
        end
    end
end

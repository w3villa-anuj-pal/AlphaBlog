class PostMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.post_mailer.blog_created.subject
  #
  def blog_created
    @user = params[:user]
    @blog = params[:blog]
    @greeting = "Hi #{@user.username}"
    mail(
         from:    "temp.car.rental@gmail.com",
         to:       @user.email,
        #  bcc:      "shubham.raj@w3villa.com",
         subject: "New Blog Created" 
    )
  end
end

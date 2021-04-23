class StytchController < ApplicationController
  def login; end

  def create
    email = params.require(:email)
    resp = stytch_client.login_or_create_user(
      email: email,
      # Make sure to use the `*_url` helpers instead of `*_path` ones!  The
      # domain is required to issue the redirect.
      login_magic_link_url: authenticate_url,
      signup_magic_link_url: authenticate_url
    )

    # You might want to have different templates for new users and returning
    # users.  If you do, consider that this may allow an attacker to use the
    # signup flow to enumerate and compile a list of emails that already have
    # registered accounts.
    #
    # If that's not a problem for your application, just remember that the
    # user's email hasn't been verified yet!  So don't include any sensitive
    # data.
    #
    #   if resp['user_created']
    #     render 'hello'
    #   else
    #     render 'hello_again'
    #   end
    #
    render 'check_your_email', locals: { email: email }
  end

  private

  def stytch_client
    @stytch_client ||= Stytch::Client.new(
      env: ENV['STYTCH_ENV'].to_sym,
      project_id: ENV['STYTCH_PROJECT_ID'],
      secret: ENV['STYTCH_SECRET']
    )
  end
end

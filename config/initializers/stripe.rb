if Rails.env.production?
  Rails.configuration.stripe = {
    publishable_key: ENV['STRIPE_PUBLISHABLE_KEY'],
    secret_key: ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    publishable_key: 'pk_test_FNL2PMdiBspb7akhBPqWBywh',
    secret_key: 'sk_test_MM5us8wqKgulGMVPc2LdpaV4'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]

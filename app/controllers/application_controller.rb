class ApplicationController < ActionController::API

  include ActionController::Helpers
  # skip_before_action :verify_authenticity_token # revents Rails from using its authenticity token security token that Rails generates from our session data and adds to the parameters sent from a Rails form to a controller action to prevent cross-site request forgery (CSRF) attacks. Since we are treating our back-end as an API, we should disable this so that we don’t receive ‘forbidden’ parameters that will prevent our controller actions from executing without errors

end

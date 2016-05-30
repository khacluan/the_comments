require 'state_machine'
require 'state_machine/version'

require 'the_simple_sort'
require 'the_sortable_tree'

require 'the_comments/config'
require 'the_comments/version'

module TheComments
  COMMENTS_COOKIES_TOKEN = 'JustTheCommentsCookies'

  class Engine < Rails::Engine
    config.autoload_paths += Dir["#{config.root}/app/controllers/concerns/**/"]
    config.autoload_paths += Dir["#{config.root}/app/models/concerns/**/"]
  end
end

# Loading of concerns
_root_ = File.expand_path('../../',  __FILE__)
require "#{_root_}/config/routes.rb"

if StateMachine::VERSION.to_f <= 1.2
  module StateMachine::Integrations::ActiveModel
    public :around_validation
  end
end

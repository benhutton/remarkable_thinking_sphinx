if RAILS_ENV == "test"

  require 'remarkable_activerecord'

  require File.join(File.dirname(__FILE__), "lib", "remarkable_thinking_sphinx")

  require 'spec'
  require 'spec/rails'

  Remarkable.include_matchers!(Remarkable::ThinkingSphinx, Spec::Rails::Example::ModelExampleGroup)

  # Available Locales
  Remarkable.add_locale RAILS_ROOT + "/vendor/plugins/remarkable_thinking_sphinx/locales/en.yml"
  Remarkable.add_locale RAILS_ROOT + "/vendor/plugins/remarkable_thinking_sphinx/locales/pt-BR.yml"

end

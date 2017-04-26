require 'define_private/version'

module DefinePrivate
  module ClassMethods
    def define_private(name, &block)
      define_method(name, block)
      private name
    end
  end

  def self.included(klass)
    klass.extend(ClassMethods)
  end
end

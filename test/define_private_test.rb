require 'test_helper'

class DefinePrivateTest < Minitest::Test
  def test_define_private
    klass = Class.new do
      include DefinePrivate

      define_private :xxx do
        100
      end
    end
    assert klass.private_method_defined?(:xxx)
    assert_equal 100, klass.new.send(:xxx)
  end

  def test_define_private_with_args
    klass = Class.new do
      include DefinePrivate

      define_private :xxx do |a, b|
        a + b
      end
    end
    assert klass.private_method_defined?(:xxx)
    assert_equal 3, klass.new.send(:xxx, 1, 2)
  end
end

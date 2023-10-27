require "test_helper"

# 拡張された`String`クラスをテストする。
# 拡張するコードへのパスは次の通り:
# config/initializers/string_extensions.rb

class StringExtensionTest < ActiveSupport::TestCase

  def setup
    @str1 = "\t\v   Hello, \t\tわーるど        \t"
    @str2 = "\t　　きむら　　　たくや　\t　"
  end

  test "破壊的`prettify`" do
    @str1.my_prettify!
    assert_equal 'Hello, わーるど', @str1
    @str2.my_prettify!
    assert_equal 'きむら たくや', @str2
  end

  test "破壊的でない`prettify`" do
    assert_equal 'Hello, わーるど', @str1.my_prettify
    assert_equal 'きむら たくや',   @str2.my_prettify
  end
end

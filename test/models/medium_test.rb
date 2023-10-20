require "test_helper"

class MediumTest < ActiveSupport::TestCase

  def setup
    @medium = media(:tbs)
  end

  test "有効である" do
    assert @medium.valid?
  end

  test "名前は空白であってはならない" do
    @medium.name = ''
    assert_not @medium.valid?
  end

  test "振り仮名は空白であってはならない" do
    @medium.furigana = ''
    assert_not @medium.valid?
  end

  test "振り仮名はひらがなであること" do
    assert @medium.valid?
    @medium.furigana = 'ティービーエス'
    assert @medium.invalid?
  end

  test "ウェブサイトURLは空白であっても良い" do
    @medium.website_url = ''
    assert @medium.valid?
  end

  test "ウェブサイトURLが空白でなければ、実在しなければならない" do
    @medium.website_url = 'https://example.false'
    assert_not @medium.valid?
  end

  test "ウェブサイトURLのスキームはHTTPでなければならない" do
    @medium.website_url.sub! /^http/, 'ftp'
    assert_not @medium.valid?
  end
end

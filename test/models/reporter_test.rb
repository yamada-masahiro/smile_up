require "test_helper"

class ReporterTest < ActiveSupport::TestCase

  def setup
    @homma = reporters(:homma)
    @fuji  = reporters(:fujimori)
    @eito  = reporters(:eito)
  end

  test "有効である" do
    assert @homma.valid?
  end

  test "名前は空白であってはならない" do
    @homma.name = ''
    assert_not @homma.valid?
  end

  test "振り仮名は空白であってはならない" do
    @fuji.furigana = ''
    assert_not @fuji.valid?
  end

  test "振り仮名はひらがなであること" do
    @eito.furigana = 'すずき エイト'
    assert_not @eito.valid?
  end

  test "振り仮名の前後にある空白は許す" do
    @homma.furigana = '   ほんま りゅう	'
    assert @homma.valid?
  end

  test "独立であれば、メディアIDはnilでなければならない" do
    assert_nil @eito.medium_id
    assert @eito.valid?
  end

  test "独立でなければ、メディアIDはnilであってはならない" do
    assert_not_nil @fuji.medium_id
    assert @fuji.valid?
  end

  test "指名の望ましさは定められた範囲に収まること" do
    desirabilities = Reporter.desirabilities
    assert @homma.desirability.in? desirabilities
    assert  @fuji.desirability.in? desirabilities
    assert  @eito.desirability.in? desirabilities
  end
end

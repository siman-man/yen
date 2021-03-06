# encoding: utf-8

require 'spec_helper'
require 'yen'

describe "Test for to_j method" do
  describe "to_j :all option" do
    it "between 0 - 1万" do
      expect(0.to_j(:all)).to eq("零")
      expect(0.to_j(:all)).to eq("零")
      expect(1.to_j(:all)).to eq("一")
      expect(2.to_j(:all)).to eq("二")
      expect(3.to_j(:all)).to eq("三")
      expect(4.to_j(:all)).to eq("四")
      expect(5.to_j(:all)).to eq("五")
      expect(6.to_j(:all)).to eq("六")
      expect(7.to_j(:all)).to eq("七")
      expect(8.to_j(:all)).to eq("八")
      expect(9.to_j(:all)).to eq("九")
      expect(10.to_j(:all)).to eq("十")
      expect(33.to_j(:all)).to eq("三十三")
      expect(77.to_j(:all)).to eq("七十七")
      expect(99.to_j(:all)).to eq("九十九")
      expect(100.to_j(:all)).to eq("百")
      expect(101.to_j(:all)).to eq("百一")
      expect(108.to_j(:all)).to eq("百八")
      expect(110.to_j(:all)).to eq("百十")
      expect(111.to_j(:all)).to eq("百十一")
      expect(285.to_j(:all)).to eq("二百八十五")
      expect(330.to_j(:all)).to eq("三百三十")
      expect(777.to_j(:all)).to eq("七百七十七")
      expect(999.to_j(:all)).to eq("九百九十九")
      expect(1000.to_j(:all)).to eq("千")
      expect(1001.to_j(:all)).to eq("千一")
      expect(1011.to_j(:all)).to eq("千十一")
      expect(1111.to_j(:all)).to eq("千百十一")
      expect(2013.to_j(:all)).to eq("二千十三")
      expect(3333.to_j(:all)).to eq("三千三百三十三")
      expect(9999.to_j(:all)).to eq("九千九百九十九")
    end

    it "between 1万 - 1兆" do
      expect(10000.to_j(:all)).to eq("一万")
      expect(10001.to_j(:all)).to eq("一万一")
      expect(10011.to_j(:all)).to eq("一万十一")
      expect(10100.to_j(:all)).to eq("一万百")
      expect(10101.to_j(:all)).to eq("一万百一")
      expect(10111.to_j(:all)).to eq("一万百十一")
      expect(11000.to_j(:all)).to eq("一万千")
      expect(11001.to_j(:all)).to eq("一万千一")
      expect(11010.to_j(:all)).to eq("一万千十")
      expect(11011.to_j(:all)).to eq("一万千十一")
      expect(11100.to_j(:all)).to eq("一万千百")
      expect(11101.to_j(:all)).to eq("一万千百一")
      expect(11110.to_j(:all)).to eq("一万千百十")
      expect(11111.to_j(:all)).to eq("一万千百十一")
      expect(12345.to_j(:all)).to eq("一万二千三百四十五")
      expect(100000.to_j(:all)).to eq("十万")
      expect(100001.to_j(:all)).to eq("十万一")
      expect(100010.to_j(:all)).to eq("十万十")
      expect(100011.to_j(:all)).to eq("十万十一")
      expect(100100.to_j(:all)).to eq("十万百")
      expect(100101.to_j(:all)).to eq("十万百一")
      expect(100110.to_j(:all)).to eq("十万百十")
      expect(100111.to_j(:all)).to eq("十万百十一")
      expect(101000.to_j(:all)).to eq("十万千")
      expect(101001.to_j(:all)).to eq("十万千一")
      expect(101010.to_j(:all)).to eq("十万千十")
      expect(101011.to_j(:all)).to eq("十万千十一")
      expect(101100.to_j(:all)).to eq("十万千百")
      expect(101101.to_j(:all)).to eq("十万千百一")
      expect(101110.to_j(:all)).to eq("十万千百十")
      expect(101111.to_j(:all)).to eq("十万千百十一")
      expect(110000.to_j(:all)).to eq("十一万")
      expect(330030.to_j(:all)).to eq("三十三万三十")
      expect(1000000.to_j(:all)).to eq("百万")
      expect(1000001.to_j(:all)).to eq("百万一")
      expect(1001001.to_j(:all)).to eq("百万千一")
      expect(1010000.to_j(:all)).to eq("百一万")
      expect(1100000.to_j(:all)).to eq("百十万")
      expect(1110000.to_j(:all)).to eq("百十一万")
      expect(7770000.to_j(:all)).to eq("七百七十七万")
      expect(10000000.to_j(:all)).to eq("一千万")
      expect(10010000.to_j(:all)).to eq("一千一万")
      expect(10100000.to_j(:all)).to eq("一千十万")
      expect(10110000.to_j(:all)).to eq("一千十一万")
      expect(11000000.to_j(:all)).to eq("一千百万")
      expect(11010000.to_j(:all)).to eq("一千百一万")
      expect(11100000.to_j(:all)).to eq("一千百十万")
      expect(11110000.to_j(:all)).to eq("一千百十一万")
      expect(30030030.to_j(:all)).to eq("三千三万三十")
      expect(33333333.to_j(:all)).to eq("三千三百三十三万三千三百三十三")
      expect(100000000.to_j(:all)).to eq("一億")
      expect(1000000000.to_j(:all)).to eq("十億")
      expect(1100000000.to_j(:all)).to eq("十一億")
      expect(10000000000.to_j(:all)).to eq("百億")
      expect(10100000000.to_j(:all)).to eq("百一億")
      expect(11000000000.to_j(:all)).to eq("百十億")
      expect(11100000000.to_j(:all)).to eq("百十一億")
      expect(100000000000.to_j(:all)).to eq("一千億")
      expect(100100000000.to_j(:all)).to eq("一千一億")
      expect(101000000000.to_j(:all)).to eq("一千十億")
      expect(101100000000.to_j(:all)).to eq("一千十一億")
      expect(110000000000.to_j(:all)).to eq("一千百億")
      expect(110100000000.to_j(:all)).to eq("一千百一億")
      expect(111000000000.to_j(:all)).to eq("一千百十億")
      expect(111100000000.to_j(:all)).to eq("一千百十一億")
      expect(370060178930.to_j(:all)).to eq("三千七百億六千十七万八千九百三十")
    end

    it "between 1兆 - 1垓" do
      expect(1000000000000.to_j(:all)).to eq("一兆")
      expect(1000000000001.to_j(:all)).to eq("一兆一")
      expect(1000100010001.to_j(:all)).to eq("一兆一億一万一")
      expect(2000000000000.to_j(:all)).to eq("二兆")
      expect(10000000000000000.to_j(:all)).to eq("一京")
      expect(10000000000000001.to_j(:all)).to eq("一京一")
      expect(10001000000000001.to_j(:all)).to eq("一京一兆一")
      expect(12345678912345678.to_j(:all)).to eq("一京二千三百四十五兆六千七百八十九億一千二百三十四万五千六百七十八")
      expect(100000000000000000000.to_j(:all)).to eq("一垓")
    end
  end

  describe "test to_j positional option" do
    it "between 0 - 9999" do
      expect(nil.to_j).to eq("0")
      expect(0.to_j).to eq("0")
      expect(1.to_j).to eq("1")
      expect(2.to_j).to eq("2")
      expect(3.to_j).to eq("3")
      expect(4.to_j).to eq("4")
      expect(5.to_j).to eq("5")
      expect(6.to_j).to eq("6")
      expect(7.to_j).to eq("7")
      expect(8.to_j).to eq("8")
      expect(9.to_j).to eq("9")
      expect(10.to_j).to eq("10")
      expect(33.to_j).to eq("33")
      expect(77.to_j).to eq("77")
      expect(99.to_j).to eq("99")
      expect(100.to_j).to eq("100")
      expect(101.to_j).to eq("101")
      expect(108.to_j).to eq("108")
      expect(110.to_j).to eq("110")
      expect(111.to_j).to eq("111")
      expect(285.to_j).to eq("285")
      expect(330.to_j).to eq("330")
      expect(777.to_j).to eq("777")
      expect(999.to_j).to eq("999")
      expect(1000.to_j).to eq("1000")
      expect(1001.to_j).to eq("1001")
      expect(1011.to_j).to eq("1011")
      expect(1111.to_j).to eq("1111")
      expect(2013.to_j).to eq("2013")
      expect(3333.to_j).to eq("3333")
      expect(9999.to_j).to eq("9999")
    end

    it "between 10000 - 999999999999" do
      expect(10000.to_j).to eq("1万")
      expect(10001.to_j).to eq("1万1")
      expect(10011.to_j).to eq("1万11")
      expect(10100.to_j).to eq("1万100")
      expect(10101.to_j).to eq("1万101")
      expect(10111.to_j).to eq("1万111")
      expect(11000.to_j).to eq("1万1000")
      expect(11001.to_j).to eq("1万1001")
      expect(11010.to_j).to eq("1万1010")
      expect(11011.to_j).to eq("1万1011")
      expect(11111.to_j).to eq("1万1111")
      expect(12345.to_j).to eq("1万2345")
      expect(100000.to_j).to eq("10万")
      expect(100001.to_j).to eq("10万1")
      expect(100010.to_j).to eq("10万10")
      expect(100011.to_j).to eq("10万11")
      expect(100100.to_j).to eq("10万100")
      expect(100101.to_j).to eq("10万101")
      expect(100110.to_j).to eq("10万110")
      expect(100111.to_j).to eq("10万111")
      expect(101000.to_j).to eq("10万1000")
      expect(101001.to_j).to eq("10万1001")
      expect(101010.to_j).to eq("10万1010")
      expect(101011.to_j).to eq("10万1011")
      expect(101100.to_j).to eq("10万1100")
      expect(101101.to_j).to eq("10万1101")
      expect(101110.to_j).to eq("10万1110")
      expect(101111.to_j).to eq("10万1111")
      expect(110000.to_j).to eq("11万")
      expect(330030.to_j).to eq("33万30")
      expect(1000000.to_j).to eq("100万")
      expect(1000001.to_j).to eq("100万1")
      expect(1001001.to_j).to eq("100万1001")
      expect(1010000.to_j).to eq("101万")
      expect(1100000.to_j).to eq("110万")
      expect(1110000.to_j).to eq("111万")
      expect(7770000.to_j).to eq("777万")
      expect(10000000.to_j).to eq("1000万")
      expect(10010000.to_j).to eq("1001万")
      expect(10100000.to_j).to eq("1010万")
      expect(10110000.to_j).to eq("1011万")
      expect(11000000.to_j).to eq("1100万")
      expect(11010000.to_j).to eq("1101万")
      expect(11100000.to_j).to eq("1110万")
      expect(11110000.to_j).to eq("1111万")
      expect(30030030.to_j).to eq("3003万30")
      expect(33333333.to_j).to eq("3333万3333")
      expect(100000000.to_j).to eq("1億")
      expect(1000000000.to_j).to eq("10億")
      expect(1100000000.to_j).to eq("11億")
      expect(10000000000.to_j).to eq("100億")
      expect(10100000000.to_j).to eq("101億")
      expect(11000000000.to_j).to eq("110億")
      expect(11100000000.to_j).to eq("111億")
      expect(100000000000.to_j).to eq("1000億")
      expect(100100000000.to_j).to eq("1001億")
      expect(101000000000.to_j).to eq("1010億")
      expect(101100000000.to_j).to eq("1011億")
      expect(110000000000.to_j).to eq("1100億")
      expect(110100000000.to_j).to eq("1101億")
      expect(111000000000.to_j).to eq("1110億")
      expect(111100000000.to_j).to eq("1111億")
      expect(370060178930.to_j).to eq("3700億6017万8930")
    end

    it "between 1兆 - 1垓" do
      expect(1000000000000.to_j).to eq("1兆")
      expect(1000000000001.to_j).to eq("1兆1")
      expect(1000100010001.to_j).to eq("1兆1億1万1")
      expect(2000000000000.to_j).to eq("2兆")
      expect(10000000000000000.to_j).to eq("1京")
      expect(10000000000000001.to_j).to eq("1京1")
      expect(10001000000000001.to_j).to eq("1京1兆1")
      expect(12345678912345678.to_j).to eq("1京2345兆6789億1234万5678")
      expect(100000000000000000000.to_j).to eq("1垓")
    end
  end
end

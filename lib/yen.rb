# encoding: utf-8
require "yen/version"

class NilClass
  def to_yen(type = :positional)
    0.to_yen(type)
  end

  def to_j(type = :positional)
    0.to_j(type)
  end
end

class Integer
  def to_yen(type = :positional)
    self.to_j(type) + "円"
  end

  def to_j(type = :positional)
    cardinal = %w(零 一 二 三 四 五 六 七 八 九)
    base_unit = %w(十 百 千)
    unit = %w(万 億 兆 京 垓 予 穣 溝 澗 正 裁 極 恒河沙 阿僧祇 那由多 不可思議 無量大数)
    float_unit = %w(割 分 厘 毛 糸 忽 微 繊 沙 塵 埃 緲 漠 模糊 逡巡 須臾 瞬息 断指 刹那 六徳 虚 空 清 浄)

    return (type == :positional)? "0" : "零" if self.zero?

    numbers = []

    self.to_s.chars{ |num| numbers.unshift num.to_i }

    number_blocks = numbers.each_slice(4).to_a.reverse

    japanese = ""
    block_size = number_blocks.size

    number_blocks.each_with_index do |block, index|
      str = ""
      if type == :positional 
        num = block.reverse.join.to_i
        str += num.to_s unless num.zero?
      else
        block.each_with_index do |num, unit|
          if num.nonzero? 
            str += base_unit[unit-1] if unit.nonzero?

            if num == 1
              if unit.zero? || unit == 3
                if index != block_size-1 || str.size.zero?
                  str += cardinal[num] 
                end
              end
            else
              str += cardinal[num]
            end
          end
        end
      end

      japanese += (type == :all)? str.reverse : str
      japanese += unit[number_blocks.size-(index+2)] if str.size.nonzero? && block_size != index+1
    end

    japanese
  end
end

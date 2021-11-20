class ValeraInit
  attr_reader :health, :mana, :cheerfulness, :fatigue, :money

  def initialize(health: 100, mana: 0, cheerfulness: 0, fatigue: 0, money: 100)
    health!(health)
    mana!(mana)
    cheerfulness!(cheerfulness)
    fatigue!(fatigue)
    money!(money)
  end

  def dead?
    health <= 0 || cheerfulness <= -10
  end

  def health(value)
    @health = if value > 100
                100
              elsif value.negative?
                0
              else
                value
              end
  end

  def mana!(value)
    @mana = if value > 100
              100
            elsif value.negative?
              0
            else
              value
            end
  end

  def cheerfulness!(value)
    @cheerfulness = if value > 10
                      10
                    elsif value < -10
                      -10
                    else
                      value
                    end
  end

  def fatigue!(value)
    @fatigue = if value > 100
                 100
               elsif value.negative?
                 0
               else
                 value
               end
  end

  def money!(money)
    @money = money
  end
end

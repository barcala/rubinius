class Rational
  def to_s
    @numerator.to_s+"/"+@denominator.to_s
  end
  
  def inspect
    "(#{to_s})"
  end

  #
  # Returns the remainder when this value is divided by +other+.
  #
  # Examples:
  #   r = Rational(7,4)    # -> Rational(7,4)
  #   r % Rational(1,2)    # -> Rational(1,4)
  #   r % 1                # -> Rational(3,4)
  #   r % Rational(1,7)    # -> Rational(1,28)
  #   r % 0.26             # -> 0.19
  #
  def % (other)
    if other == 0.0
      raise ZeroDivisionError, "division by zero"
    end
    value = (self / other).floor
    return self - other * value
  end
end

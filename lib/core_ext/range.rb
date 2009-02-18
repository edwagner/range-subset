# Extend the Range class with some set-like operators
class Range

  # Return a new Range that is the common interval of the two ranges,
  # or nil if there is no overlap
  def &(range)
    range = range.to_range if range.respond_to?(:to_range)
    return nil if range.begin > self.end || range.end < self.begin
    return nil if range.begin == self.end && self.exclude_end?
    return nil if range.end == self.begin && range.exclude_end?

    if self.end < range.end
      exclude_end = self.exclude_end?
    elsif range.end < self.end
      exclude_end = range.exclude_end?
    else
      exclude_end = self.exclude_end? || range.exclude_end?
    end
    Range.new([range.begin, self.begin].max, [range.end, self.end].min, exclude_end)
  end
  alias intersection &

  # Returns true if this range is a subset of the given range
  def subset?(range)
    range = range.to_range if range.respond_to?(:to_range)
    return false if self.begin < range.begin || self.end > range.end
    return false if self.end == range.end && !self.exclude_end? && range.exclude_end?
    true
  end

  # Returns true if this range is a superset of the given range
  def superset?(range)
    range = range.to_range if range.respond_to?(:to_range)
    return false if self.begin > range.begin || self.end < range.end
    return false if self.end == range.end && self.exclude_end? && !range.exclude_end?
    true
  end

end

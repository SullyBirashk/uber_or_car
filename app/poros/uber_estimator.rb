class UberEstimator
  attr_reader :miles, :avg_uber_ppm

  def initialize(miles)
    @miles = miles.to_f
    @avg_uber_ppm = 1.25
  end

  def total
    total = @miles * @avg_uber_ppm
  end
end

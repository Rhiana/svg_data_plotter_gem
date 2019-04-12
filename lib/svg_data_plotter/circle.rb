module SvgDataPlotterGem
  class Circle
    attr_reader :score, :total, :size

    def initialize(options)
      validation options, [:score, :total, :size]

      @score = options[:score]
      @total = options[:total]
      @size  = options[:size]
    end

    def percentage
      (score / total.to_f) * 100
    end

    def center
      size / 2.0
    end

    def radius
      center - 5.0
    end

    def circumference
      radius * 2 * Math::PI
    end

    def percentage_adj
      (score / total.to_f) * circumference
    end

    def radians(degrees)
      degrees * Math::PI / 180
    end

    def x_co_ord(angle)
      rad = radians(angle)
      x   = radius * Math.cos(rad)
      center + x
    end

    def y_co_ord(angle)
      rad = radians(angle)
      y   = radius * Math.sin(rad)
      center - y
    end

    def arc_start
      "#{x_co_ord(90)} #{y_co_ord(90)}"
    end

    def arc_end_rhs
      "#{x_co_ord(270)} #{y_co_ord(270)}"
    end

    def arc_end_lhs
      "#{x_co_ord(90)} #{y_co_ord(90)}"
    end

    def validation(options, params)
      raise ArgumentError if options.empty?

      params.each do |key|
        raise ArgumentError unless options.has_key?(key)
      end
    end

  end
end

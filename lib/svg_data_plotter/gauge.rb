module SvgDataPlotterGem
  class Gauge
    attr_reader :score, :total, :size

    def initialize(options)
      validation options, [:score, :total, :size]

      @score = options[:score]
      @total = options[:total]
      @size  = options[:size]
    end

    def height
      (size / 2.0) + 15.0
    end

    def percentage
      (score / total.to_f) * 100
    end

    def center
      size / 2.0
    end

    def radius
      center - 10.0
    end

    def semi_circle
      radius * Math::PI
    end

    def percentage_adj
      (score / total.to_f) * semi_circle
    end

    def offset
      percentage_adj - semi_circle
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
      "#{x_co_ord(0)} #{y_co_ord(0)}"
    end

    def arc_end
      "#{x_co_ord(180)} #{y_co_ord(180)}"
    end

    def validation(options, params)
      raise ArgumentError if options.empty?

      params.each do |key|
        raise ArgumentError unless options.has_key?(key)
      end
    end
  end
end

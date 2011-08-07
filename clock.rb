class Clock
  def display(time)
    hours, minutes, seconds = time.split(":").map{|item| item.to_i}

    seconds(seconds) + "\n" +
      hours(hours) + "\n" +
      minutes(minutes)
  end

  private

  def o_fill string, length
    while string.length < length
      string << "O"
    end

    string
  end

  def hours hours
    def five_hours hours
      string = ''

      (hours / 5).times do
        string << "R"
      end

      o_fill string, 4
    end

    def one_hours hours
      string = ''
      remainder = hours % 5

      remainder.times do
        string << "R"
      end

      o_fill string, 4
    end

    five_hours(hours) + "\n" +
      one_hours(hours)
  end

  def minutes minutes
    def five_minutes minutes
      string = ''

      (minutes / 5).times do |current|
        if (current + 1) % 3 == 0
          string << "R"
        else
          string << "Y"
        end
      end

      o_fill string, 11
    end

    def one_minutes minutes
      string = ''
      remainder = minutes % 5

      remainder.times do
        string << "Y"
      end

      o_fill string, 4
    end

    five_minutes(minutes) + "\n" +
      one_minutes(minutes)
  end

  def seconds number
    return "Y" if number.even?
    "O"
  end
end

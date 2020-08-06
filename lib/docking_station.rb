class DockingStation

  def initialize
    @bikes = []
  end

  def dock(bike)
    if @bikes.size == 20
      "No space available"
    else
      @bikes.push(bike)
    end
  end

  def release(bike)
    if @bikes.size == 0
      "Sorry no bikes"
    else
      @bikes.pop
    end
  end
end

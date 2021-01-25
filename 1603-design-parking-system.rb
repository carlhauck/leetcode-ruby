class ParkingSystem

  =begin
      :type big: Integer
      :type medium: Integer
      :type small: Integer
  =end
      def initialize(big, medium, small)
          @output = []
          @cars_allowed = {1 => big, 2 => medium, 3 => small}
      end
  
  
  =begin
      :type car_type: Integer
      :rtype: Boolean
  =end
      def add_car(car_type)
          if @cars_allowed[car_type] > 0
              @cars_allowed[car_type] -= 1
              return true
          else
              return false
          end
      end
  
  
  end
  
  # Your ParkingSystem object will be instantiated and called as such:
  # obj = ParkingSystem.new(big, medium, small)
  # param_1 = obj.add_car(car_type)
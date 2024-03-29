module Declination_angle

contains

  subroutine cal_declination_angle(day,angel)

    implicit none

    real(4), parameter      :: pi = 3.14
    integer(4), intent(in)  :: day
    real(4), intent(out)    :: angel

    
    angel = asin(sin(-23.44*pi/180)*cos(pi/180*(360/365.24*(day+10)+360/pi*0.0167*sin(pi/180*360/365.24*(day-2)))))
    print*, 'angel = ', angel*180/pi 

  end subroutine cal_declination_angle

end module Declination_angle

program recursive_factorial

  implicit none
  integer :: m

 print *, "Enter an integer:"
 read *, m

  print *, 'Factorial ',m,' ! = ', factorial(m)

  contains

  recursive function factorial(m) result (fac)

    implicit none

    integer, intent(in) :: m
    integer :: fac

    if( m == 0 ) then
      fac = 1
    else
      fac = m * factorial(m - 1)
    end if

  end function

end program recursive_factorial

program ArrayAverage
    implicit none

    integer, parameter :: array_size = 5
    real :: numbers(array_size), sum, average
    integer :: i

    write(*, '(A, I1, A)') "Enter ", array_size, " numbers:"
    do i = 1, array_size
        read *, numbers(i)
    end do

    sum = 0.0
    do i = 1, array_size
        sum = sum + numbers(i)
    end do

    average = sum / real(array_size)

    print *, "Array elements:"
    do i = 1, array_size
        print *, numbers(i)
    end do

    print *, "Average of the array:", average

end program ArrayAverage

program TaylorSeries
    implicit none
    real(8) :: x, ex
    integer :: n, i, j
    real(8) :: term, factorial

    print *, "Enter the value of x: "
    read *, x

    ! Prompt the user to enter the number of terms (n)
    print *, "Enter the number of terms (n): "
    read *, n

    ! Initialize ex (result) to 1, not 0
    ex = 1.0d0

    ! Calculate the Taylor series
    do i = 1, n
        factorial = 1.0d0
        do j = 1, i
            factorial = factorial * j
        end do
        term = x**i / factorial
        ex = ex + term
    end do

    ! Print the result
    print *, "e^", x, "=", ex

end program TaylorSeries

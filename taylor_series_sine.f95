program TaylorSeriesSine
    implicit none
    real(8) :: x, sinx
    integer :: n, i, j
    real(8) :: term, factorial, sign

    print *, "Enter the value of x: "
    read *, x

    print *, "Enter the number of terms (n): "
    read *, n

    sinx = 0.0d0

    do i = 0, n-1
        factorial = 1.0d0
        do j = 1, 2*i+1
            factorial = factorial * j
        end do
        term = (-1.0d0)**i * x**(2*i + 1) / factorial
        sinx = sinx + term
    end do

    print *, "sin(", x, ") =", sinx

end program TaylorSeriesSine

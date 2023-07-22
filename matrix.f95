program MatrixMultiplication
    implicit none

    integer, parameter :: m = 3
    integer, parameter :: n = 2
    integer, parameter :: p = 3

    real :: A(m, n), B(n, p), C(m, p)
    integer :: i, j, k

    A = reshape([1.0, 2.0, 3.0, 4.0, 5.0, 6.0], [m, n])

    B = reshape([7.0, 8.0, 9.0, 10.0, 11.0, 12.0], [n, p])

    do i = 1, m
        do j = 1, p
            C(i, j) = 0.0
            do k = 1, n
                C(i, j) = C(i, j) + A(i, k) * B(k, j)
            end do
        end do
    end do

    print *, "Matrix A:"
    do i = 1, m
        do j = 1, n
            print *, A(i, j)
        end do
    end do

    print *, "Matrix B:"
    do i = 1, n
        do j = 1, p
            print *, B(i, j)
        end do
    end do

    print *, "Resultant Matrix C (Matrix A * Matrix B):"
    do i = 1, m
        do j = 1, p
            print *, C(i, j)
        end do
    end do

end program MatrixMultiplication

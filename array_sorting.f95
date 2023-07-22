program ArraySorting
    implicit none

    integer, parameter :: array_size = 10
    integer :: i, j, temp, numbers(array_size) = [4, 5, 3, 6, 2, 8, 9, 1, 7, 4]

    print *, "Original array:"
    do i = 1, array_size
        print *, numbers(i)
    end do

    do i = 1, array_size - 1
        do j = 1, array_size - i
            if (numbers(j) > numbers(j + 1)) then
                temp = numbers(j)
                numbers(j) = numbers(j + 1)
                numbers(j + 1) = temp
            end if
        end do
    end do

    print *, "Sorted array (in ascending order):"
    do i = 1, array_size
        print *, numbers(i)
    end do

end program ArraySorting

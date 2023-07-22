program QuadraticEquationSolver
    implicit none

    real :: a, b, c, discriminant, root1, root2

    print *, "Enter the coefficient a:"
    read *, a

    print *, "Enter the coefficient b:"
    read *, b

    print *, "Enter the coefficient c:"
    read *, c

    discriminant = b**2 - 4.0 * a * c

    if (discriminant > 0.0) then
        root1 = (-b + sqrt(discriminant)) / (2.0 * a)
        root2 = (-b - sqrt(discriminant)) / (2.0 * a)
        print *, "Two distinct real solutions:"
        print *, "Root 1:", root1
        print *, "Root 2:", root2
    else if (discriminant == 0.0) then
        root1 = -b / (2.0 * a)
        print *, "One real solution (repeated roots):"
        print *, "Root:", root1
    else
        print *, "No real solutions (complex roots)."
    end if

end program QuadraticEquationSolver

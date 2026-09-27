program cumulative_circle
    implicit none

    integer :: numbers(10)
    integer :: cumulative(10)
    integer :: i
    integer :: total
    real :: area
    real, parameter :: pi = 3.1416
    logical :: found

    call random_seed()

    ! Generate random integers from 1 to 20
    do i = 1, 10
        call random_number(area)
        numbers(i) = int(area * 20) + 1
    end do

    ! Compute cumulative sums
    total = 0
    do i = 1, 10
        total = total + numbers(i)
        cumulative(i) = total
    end do

    print *, "Cumulative Sum List:"
    do i = 1, 10
        print *, cumulative(i)
    end do

    found = .false.

    print *
    print *, "Circle Areas for Radii Divisible by 3:"

    do i = 1, 10
        if (mod(cumulative(i),3) == 0) then
            found = .true.
            area = pi * cumulative(i) * cumulative(i)
            print *, "Radius =", cumulative(i), " Area =", area
        end if
    end do

    if (.not. found) then
        print *, "Radius not found"
    end if

end program cumulative_circle

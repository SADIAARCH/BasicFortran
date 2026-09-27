program extract_integers

    implicit none

    real :: mixed(10)
    integer :: integers(10)
    integer :: i, j, count, temp

    ! Input array
    mixed = (/12.0, 3.5, 7.0, 8.2, &
              25.0, 9.7, -4.0, &
              6.6, 19.0, 2.3/)

    ! Print original array
    print *, "Original (Mixed) Array:"
    do i = 1, 10
        print *, mixed(i)
    end do

    ! Extract integer-valued elements
    count = 0
    do i = 1, 10
        if (mixed(i) == int(mixed(i))) then
            count = count + 1
            integers(count) = int(mixed(i))
        end if
    end do

    ! Sort the integer array (Ascending)
    do i = 1, count-1
        do j = i+1, count
            if (integers(i) > integers(j)) then
                temp = integers(i)
                integers(i) = integers(j)
                integers(j) = temp
            end if
        end do
    end do

    ! Print sorted integer array
    print *
    print *, "Sorted Integer Array:"
    do i = 1, count
        print *, integers(i)
    end do

end program extract_integers

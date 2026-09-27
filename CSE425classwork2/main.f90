
program main
    implicit none

    real :: vec_1(3), vec_2(3)
    real :: mtx_I(3,3)
    integer :: i, j

    ! Initialize vector
    vec_1(1) = 5
    vec_1(2) = 5
    vec_1(3) = 5

    ! Create identity matrix
    do i = 1, 3
        do j = 1, 3
            if (i == j) then
                mtx_I(i,j) = 1.0
            else
                mtx_I(i,j) = 0.0
            end if
        end do
    end do

    ! Matrix-vector multiplication
    do i = 1, 3
        vec_2(i) = 0.0
        do j = 1, 3
            vec_2(i) = vec_2(i) + mtx_I(i,j) * vec_1(j)
        end do
    end do

    ! Print vector
    write(*,*) "Vector 1 =", vec_1

    ! Print identity matrix
    write(*,*) "Identity Matrix:"
    do i = 1, 3
        write(*,*) mtx_I(i,:)
    end do

    ! Print result
    write(*,*) "Matrix-Vector Product =", vec_2

end program main


program SparseMatrixMultiplication

    implicit none
    integer ::i,j,k
    integer,dimension(2,3)::mat1
    integer,dimension(3,3)::mat2
    integer,dimension(2,3)::result
    mat1 = reshape((/ &
1, -1, &
0, 0, &
0, 3 /), (/2,3/))

mat2 = reshape((/ &
7,0,0, &
0,0,0, &
0,0,1 /), (/3,3/))

    result=0
    do i=1,2
        do k=1,3
            if(mat1(i,k)/=0) then
                do j=1,3
                    result(i,j)=result(i,j)+mat1(i,k)*mat2(k,j)
                end do
            end if
        end do
    end do

    print *, "Result Matrix"
    do i=1,2
        print*,result(i,:)

    end do

end program SparseMatrixMultiplication


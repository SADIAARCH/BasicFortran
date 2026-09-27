program dynamic_array_example
    implicit none
    real,allocatable::dynamic_1(:,:)
    integer::row_dim,col_dim
    integer::i,j
    print*,"Enter row and column dimensions:"
    read(*,*)row_dim,col_dim
    allocate(dynamic_1(row_dim,col_dim))
    do i=1,row_dim,col_dim
        dynamic_1(i,j)=i*j
        print*,"Enter row and colum dimensions:"
        read(*,*) row_dim,column_dim
        allocate(dynamic_1(row_dim,column_dim))
        do i=1,row_dim
            do j=1,col_dim
                dynamic_1(i,j)=i*j
                print*,"dynamic_1(",i,",",j,")=",dynamic_1(i,j)
            end do
        end do
        deallocate(dynamic_1)

end program dynamic_array_example

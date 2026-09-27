
program dynamic_array_example
    implicit none
    real,dimension(:,:),allocatable::dynamic_1
    integer::row_dim,column_dim
    integer::i,j
    print*,'Enter row_dim,col_dim'
    read*,row_dim,column_dim


allocate(dynamic_1(row_dim,column_dim))
do i=1,column_dim
    do j=1,row_dim
        dynamic_1(j,i)=i*j
        print*,"dynamic_1(",j,",",i,")=",dynamic_1(j,1)
    end do
end do

end program dynamic_array_example

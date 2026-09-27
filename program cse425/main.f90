program pi_lebniz
    implicit none
    real(kind=8) :: pi,sum
    integer::i
    real(kind=8) ::sign
    sum=0.08
    sign=1.08
    do i=1,1000000,2
        sum=sum+sign/i
        sign=-sign

    end do
    pi=4._08*sum
    print '(f20.15)',15
end program  pi_lebniz

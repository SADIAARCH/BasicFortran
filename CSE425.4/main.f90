
program quadratic_solver
    implicit none
     real::a,b,c
     real::discriminant
     real::root1,root2
    print *, "Enter values of a,b,c"
    read*,a,b,c
    discriminant=(b*b)-(4*a*c)
    if(discriminant<0) then
        print*,"roots are complex"
else
    root1=(-b+sqrt(discriminant))/(2*a)
    root2=(-b+sqrt(discriminant))/(2*a)
    print*,"Root 1=",root1
    print*,"Root 2=",root2
    end if


end program quadratic_solver





program lettergrade
    implicit none
    real::score
    print*,'Enter the score'
    read*,score
    if(score>=93) then
        Write(*,*)"Letter grade is A"
        else if(score>=90 .and. score<93 ) then
            write(*,*)"Letter grade is A-"
            else if(score>=87 .and. score<90) then
                write(*,*) "Letter grade is B+"
                else if(score<87) then
                    write(*,*) "Letter grade is B"
    end if
end program lettergrade

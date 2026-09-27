Program result_details
    implicit none
    character(len=20)::course_code(4)
      character(len=20)::section(4)
      real::score(4)
      real::total,average
      integer::i
      total=0.0
      print*,"Enter details for 4 courses"
      do i=1,4
        print*,"Courses",i
        print*,"Enter course code:"
        read*,course_code(i)
        print*,"Enter section:"
        read*,section(i)
        print*,"Enter Score:"
        read*,score(i)
        total=total+score(i)
      end do
      average=total/4.0
      print*,"---Result details---"
      do i=1,4
        print*,"Course code:",course_code(i);
        print*,"Section :",section(i);
        print*,"Score:",score(i);

      end do
      print*,"Average Score=",average
end Program result_details

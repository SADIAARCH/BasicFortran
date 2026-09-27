#include <stdio.h>
int x=100;
void display(){
   printf("Value of x inside display()%d\n",x);

}
void test(){

 int x=50;
 display();

}
int main(){
int x=25;

    printf("Value of x inside main():%d\n",x);
    test();
    return 0;
}

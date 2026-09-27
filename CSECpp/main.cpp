#include <iostream>
using namespace std;

class CSE425
{
private:
    string studentName;
    int id;
    char grade;

public:
    void input()
    {
        cout << "Enter your name: ";
        cin >> studentName;

        cout << "Enter your ID: ";
        cin >> id;

        cout << "Enter your grade: ";
        cin >> grade;
    }

    void display()
    {
        cout << "\nStudent Information\n";
        cout << "Name : " << studentName << endl;
        cout << "ID   : " << id << endl;
        cout << "Grade: " << grade << endl;
    }
};

int main()
{
    CSE425 c;

    c.input();
    c.display();

    return 0;
}

import 'dart:io';
import 'dart:math';

void main() {
   randomSearch2();
  // int randNum = Random().nextInt(99);
  // int count = randomSearch(randNum);
  // print('шаги$count  число$randNum');

//   int randNumb = Random().nextInt(101);
//   int maxNumber = 101;

//   int chet = binarySearch(randNumb, maxNumber);
//   print('Число $randNumb  $chet шаги.');
 }

//1) Написать функцию рандомного поиска. (Пользователь загадывает число, программа выдает ему число от 0 до 100
//рандомным образом и так до тех, пор пока пользователь не скажет, что число верно. Алгоритм работы схож с бинарным поиском).
void randomSearch2() {
  int min = 0;
  int max = 101;
  int randNum = Random().nextInt(101);

  String user = '';

  while (user != 'yes') {
    int randNum = Random().nextInt(101);

    print('ваше число $randNum ?');
    user = stdin.readLineSync()!;
  }
}

// //2) Написать две дополнительные функции для проверки количества шагов, за которое компьютер угадал число.
// //Компьютер играет сам с собой и возвращает количество шагов.
int randomSearch(int randNum) {
  Random ran = Random();
  int counter = 0;
  int numb = 0;
  int max = 99;
  bool found1 = false;
  while (!found1) {
    numb = ran.nextInt(max);
    counter++;
    if (numb == randNum) {
      found1 = true;
    }
  }
  return counter;
}

int binarySearch(int randNumb, int maxNumber) {
  int min = 0;
  int max = maxNumber;
  int chet4ik = 0;
  int mid;
  while (min <= max) {
    mid = (min + max) ~/ 2;
    chet4ik++;

    if (mid == randNumb) {
      return chet4ik;
    } else if (mid < randNumb) {
      min = mid + 1;
    } else {
      max = mid - 1;
    }
  }

  return chet4ik;
}

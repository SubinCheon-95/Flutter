/*
  날짜 : 2025/10/24
  이름 : 천수빈
  내용 : Dart 제네릭 컬렉션
*/

class Box<T> {

  T item;

  Box(this.item);

  T getItem() {
    return item;
  }
}

void main() {

  // 제네릭 객체 생성
  Box stringBox = Box<String>('hello');
  String text = stringBox.getItem();
  print('text : $text');

  Box intBox = Box<int>(100);
  int num = intBox.getItem();
  print('num : $num');

  ////////////////////////////////
  // List
  ////////////////////////////////

  // List 생성
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];
  print('fruits : $fruits');

  // 요소 추가
  fruits.add('Durian');
  print('fruits : $fruits');

  // 요소 참조
  print('첫번째 과일 : ${fruits[0]}');
  print('첫번째 과일 : ${fruits.first}');
  print('마지막 과일 : ${fruits.last}');

  // 원소 수정
  fruits[1] = 'Berry';
  print('fruits : $fruits');

  // 원소 제거
  String removedFruit = fruits.removeAt(0);
  print('removed : $removedFruit');
  print('fruits : $fruits');

  // 리스트 크기
  print('과일 갯수 : ${fruits.length}');

  // 리스트 반복문
  for (String fruit in fruits) {
    print('과일 : $fruit');
  }

  // 리스트 필터링
  List<int> numbers = [1, 2, 3, 4, 5];
  var evenNumbers = numbers.where((n) => n % 2 == 0);
  print('짝수 : $evenNumbers');

  // 변환
  var doubleList = numbers.map((n) => n * 2).toList();
  print('doubleList : $doubleList');

  ////////////////////////////////
  // Set, 중복 제거 자료구조
  ////////////////////////////////

  Set<String> colors = {'red', 'green', 'blue'};
  print('colors : $colors');

  // 원소 추가
  colors.add('orange');
  colors.add('red'); // 중복 안됨
  print('colors : $colors');

  // 집합 연산(합집합)
  var set1 = {1, 2, 3, 4};
  var set2 = {3, 4, 5, 6};

  // 교집합
  Set<int> unionSet = set1.union(set2);
  print('합집합 : $unionSet');

  // 교집합
  Set<int> intersectSet = set1.intersect(set2);
  print('교집합 : $intersectSet');

  // 차집합

  ////////////////////////////////
  // Map
  ////////////////////////////////

  // 맵 생성
  Map<String, String> user = {
    'id': 'a101',
    'name': '홍길동',
    'addrss': '부산',
  };

  print('user : $user');

  // Map 키 참조
  print('이름 : ${user['name']}');
  print('주소 : ${user['address']}');

  // 키 존재 여부
  print('age 키 존재 여부 : ${user.containsKey('age')}');

  // 모든 키, 값을 리스트 생성
  print('모든 키 목록 : ${user.keys.toList()}');
  print('모든 값 목록 : ${user.values.toList()}');

}














}

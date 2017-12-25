Swift의 Protocol 과 extension을 통한 기본구현이 다른 언어의 추상 클래스와 비슷한데, Swift만의 이점은 무엇일까

 * Swift의 Protocol은 열거형, 구조체, 클래스 모두 채택 가능하다.
 * 두 개 이상의 Protocol을 채택할 수 있으므로, 여러 Protocol의 기본동작으로 확장가능하다.

 ``` Swift
let numbers = [10,20,30,40,50,60]
let slice = numbers[1 ... 3]
let reversedSlice = slice.reversed()
let answer = reversedSlice.map{$0 * 10}
print(answer)
 ```

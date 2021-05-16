
// case 1
var myOptional : String?

myOptional = " Xind"

var text : String = myOptional! // Force Unwrapping

// case 2

/*var myOptinal2 :String?
myOptinal2 = nil
var text2 : String = myOptinal2!  이 경우 성공적으로 빌드는 되지만 실제로 앱을 실행했을 때 오류가 발생함
*/

// case 3

var myOptional3 : String?
myOptional3 = nil
if myOptional3 != nil {
    var text3 : String = myOptional3!
}   // Check for nil Value , 이 경우 myOptional이 nil이 아닐 때 강제로 myOptional을 언래핑한다.

// case 4

var myOptional4 : String?
myOptional4 = nil
if let safeOptional = myOptional4 {
    var text4 : String = safeOptional
} // optional Binding   , 옵셔널 변수를 safeOptional로 옵셔널 바인딩하여 사용.

//  case 5

var myOptional5 : String?

myOptional5 = nil

var text5 : String = myOptional5 ?? "default value"

print(text5) // Nil Coalescing Operator , 변수가 nil 일 경우 설정된 기본값을 출력한다.

//case 6

struct MyOptioanl {
    var property = 123
    func method()  {
        print("I am struct's method")
    }
}

/*
 let myOptional6 : MyOptioanl?

myOptional6 = nil

print(myOptional6.property)
 
빌드는 되지만 앱을 실행하면 오류가 생김
 */

let myOptional6 : MyOptioanl?

myOptional6 = nil

print(myOptional6?.property)
print(myOptional6?.method()) // Optional Chaining , ?. 를 이용하여 myOptional이 nil이 아닌 경우에만 실행되고 nil일 경우 실행되지 않음 

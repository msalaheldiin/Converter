import PlaygroundSupport

var str = "Hello, playground"


//First Question
func calculate(first:Int, second:Int,third:Int , fourth: Int)->Int {
    
    return (first - second)*(fourth - third)
}
calculate(first: 3, second: 1, third: 3 , fourth: 9)


//Second Question
func checkForAnagram(firstString: String, secondString: String) -> Bool {
    
    let firstStringWithNoduplication = firstString.reduce("") { $0.range(of: String($1)) == nil ? $0.appending(String($1)) : $0}
    
    let secondStringWithNoduplication = firstString.reduce("") { $0.range(of: String($1)) == nil ? $0.appending(String($1)) : $0}
    
    return  firstStringWithNoduplication.replacingOccurrences(of: " ", with: "").lowercased().sorted() == secondStringWithNoduplication.replacingOccurrences(of: " ", with: "").lowercased().sorted()
}
checkForAnagram(firstString: "debit card", secondString: "bad credit")
checkForAnagram(firstString: "punishments", secondString: "nine thumps")


//Thisrd Question
func recusiveFib(_ n: Int) -> Int {
    
    if n == 0 {
        return 0
    } else if n == 1{
        return 1
    }
    
    return recusiveFib(n - 1) + recusiveFib(n - 2)
}
recusiveFib(6)

func iterativeFib (_ n: Int) -> Int {
    guard n > 1 else {return n}
    var a = 0
    var b = 1
    for _ in 2...n {
        let temp = b
        b = a + b
        a = temp
    }
    return b
}
iterativeFib(6)



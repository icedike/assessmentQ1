//Trapezoid formula
//catulate the sum of odd numbers in some range
//start number must be smaller then end number
func caculateOddRange(start:Int, end:Int) -> Int{
    var sum = 0
    var startNum = start
    var endNum = end
    var countOdd = 0
    
    //check start number smaller end number and all positive
    if startNum < 0 || endNum < 0 || startNum >= endNum {
        print("enter unvalid numbers")
        return -1
    }
    
    // make the start number be odd
    if startNum % 2 == 0 {
        startNum += 1
    }
    // make the end number be odd
    if endNum % 2 == 0{
        endNum -= 1
    }
    
    //caculate the numbers of the odd numbers
    countOdd = (endNum - startNum)/2 + 1
    
    sum = (startNum + endNum)/2 * countOdd
    
    return sum
}
caculateOddRange(start: 1, end: 10)
print("Trapezoid formula. sum of the odd numbers from 1 to 100:\(caculateOddRange(start: 1, end: 100))")
//***********************************************
//simplest way to catulate
var sum = 0
for number in 1...100 {
    if number % 2 == 1 {
        sum += number
    }
}
print("the sum of odd numbers from 1 to 100 = \(sum)")

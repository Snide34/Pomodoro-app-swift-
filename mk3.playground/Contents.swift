import Foundation

let rows = 5

for i in 1...5 {
    let spaces = String(repeating: " ", count: rows - i)
    
    let stars = String(repeating: "*", count: (2 * i) - 1)
    
    print(spaces + stars)
}
for i in 5..1.reversed() {
    let spaces = String(repeating: " ", count: rows - i)
    
    let stars = String(repeating: "*", count: (2 * i) - 1)
    
    print(spaces + stars)
}

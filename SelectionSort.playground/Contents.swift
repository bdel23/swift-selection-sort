/* Selection Sort
     - Iterates through array.  At each index, iterates through to the end of the array, finding the minimum remaining element and swapping it with the current index.  This effectively sorts the array at the front up to the current index
     - Runtime: O(n^2)
 */

import UIKit

extension Array where Element: Comparable {
    mutating func selectionSort(ascending: (Element, Element) -> Bool) {
        for i in 0 ..< self.count {
            var key = i
            for j in i...self.count-1 where ascending(self[j], self[key]) {
                key = j
            }
            self.swapAt(key, i)
        }
    }
}

var numbers = [8,3,9,20,17,23,1,0,4,6]
numbers.selectionSort(ascending: <)


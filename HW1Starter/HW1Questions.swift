//
//  HW1Questions.swift
//  HW1Starter
//
//  Created by Justin Wong on 9/8/24.
//

import Foundation

class HW1Questions {
    
    // MARK: - Task 1A. File Names
    
    /// Get the file names of a certain given length, excluding the file type name.
    /// - Parameters:
    ///   - filenames: An array of file names
    ///   - count: Target length of file name (excluding the file type)
    /// - Returns: An array of file names whose excluded file type length matches `count`.
    func getFileNames(for filenames: [String], withCount count: Int) -> [String] {
        /* Python code:
         while i < len(filenames):
         if len(filenames[i]) != count: #
            filenames.pop() #pop element at index i
         else:
            i++
        */
        
        var emptylist = [String]()
        for fi in filenames {
            if let index = fi.firstIndex(of: ".") {
                if fi[..<index].count == count {
                    emptylist.append(fi)
                }
            }
        }
        return emptylist
    }
    
    
    
    // MARK: - Task 1B. Escape
    
    enum Direction {
        case left
        case right
        case up
        case down
    }
    
    /// Returns a boolean if we can escape given the following list of instructions and locations.
    /// - Parameters:
    ///   - directions: An array of instructions detailing how to escape
    ///   - startingIndex: The starting index
    ///   - escapeIndex: The ending index
    /// - Returns: A boolean. True if we can escape. False otherwise.
    func canEscape(withDirections directions: [[Direction]], startingIndex: Int, escapeIndex: Int) -> Bool {
        outerloop: for direction in directions {
            var currentindex = startingIndex
            for d in direction {
                if d == .up || d == .down {
                    continue outerloop
                } else if d == .left {
                    currentindex -= 1
                } else {
                    currentindex += 1
                }
            }
            if currentindex == escapeIndex {
                return true
            }
        }
        return false
    }
    
}

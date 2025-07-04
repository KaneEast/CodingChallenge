//
//  File.swift
//  CodingChallenge
//
//  Created by apayyellow on 2025/07/04.
//

import Foundation

/// Unique Elements for Array
func uniqueElements<T: Hashable>(from array: [T]) -> [T] {
    return Array(Set(array))
}

/// Returns an array of unique elements while preserving their original order.
func uniqueElementsInOriginalOrder<T: Hashable>(from array: [T]) -> [T] {
    var seenElements: Set<T> = [] // Keeps track of seen elements
    var result: [T] = [] // The output array with unique elements

    for element in array {
        if !seenElements.contains(element) {
            seenElements.insert(element)
            result.append(element) // Add element to the result if not seen
        }
    }

    return result
}

func cyclicRotation<T: Hashable>(_ A: [T], _ K: Int) -> [T] {
    guard !A.isEmpty else { return A } // Handle empty array case
    
    let length = A.count
    let rotations = K % length // Reduce unnecessary rotations
    let splitIndex = length - rotations

    // Rotate using array slicing
    return Array(A[splitIndex..<length] + A[0..<splitIndex])
}

//
//  TextFileReader.swift
//
//
//  Created by Chelsey Baker on 10/14/23.
//

import Foundation

/// Can read files from within the bundle. Most useful for testing, but can be used
/// in the app if the input files are added as resources
class TextFileReader {

    enum Error: Swift.Error {
        case fileNotFound
        case fileUnreadable
    }

    init(bundle: Bundle) {
        self.bundle = bundle
    }

    /// Reads the puzzle input text files.
    func readFile(fileName: String, fileExtension: String = "txt") throws -> String {

        guard let fileUrl = bundle.url(forResource: fileName, withExtension: fileExtension) else {
            throw TextFileReader.Error.fileNotFound
        }

        do {
            let contents = try String(contentsOf: fileUrl, encoding: .utf8)
            return contents
        } catch {
            throw TextFileReader.Error.fileUnreadable
        }
    }

    private let bundle: Bundle
}

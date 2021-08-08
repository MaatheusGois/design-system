//
//  File.swift
//  
//
//  Created by Matheus Gois on 07/08/21.
//

import Foundation

public class JSONHelper {
    public static func load<T: Decodable>(
        from fileName: String,
        fileExtension: String = "json"
    ) -> T {
        guard let path = Bundle(for: self).path(forResource: fileName, ofType: fileExtension) else {
            fatalError("Can't find \(fileName).\(fileExtension) file")
        }

        guard
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)),
            let response = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("Failed to convert \(fileName).\(fileExtension) to \(String(describing: T.self))")
        }

        return response
    }
}

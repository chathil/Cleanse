//
//  FileVisitorTests.swift
//  cleasecTests
//
//  Created by Sebastian Edward Shanus on 4/21/20.
//  Copyright © 2020 Square, Inc. All rights reserved.
//

import XCTest
import swift_ast_parser
@testable import cleasec

fileprivate let importedFixture = """
(source_file "/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift"
  (import_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:9:1 - line:9:8] 'Foundation')
  (import_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:10:1 - line:10:8] 'Cleanse'))
"""

fileprivate let nonImportedFixture = """
(source_file "/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift"
(import_decl range=[/Users/sebastians/Desktop/SmallCleanse/Test/Sample.swift:9:1 - line:9:8] 'Foundation'))
"""

class FileVisitorTests: XCTestCase {
    var visitor = FileVisitor()
    
    func testImportedCleanse() {
        let input = InputSanitizer.split(text: importedFixture)
        let sanitizedInput = InputSanitizer.sanitize(text: input)
        let node = NodeSyntaxParser.parse(text: sanitizedInput).first!
        visitor.walk(node)
        XCTAssertTrue(visitor.importsCleanse)
    }
    
    func testNonImportedCleanse() {
        let input = InputSanitizer.split(text: nonImportedFixture)
        let sanitizedInput = InputSanitizer.sanitize(text: input)
        let node = NodeSyntaxParser.parse(text: sanitizedInput).first!
        visitor.walk(node)
        XCTAssertFalse(visitor.importsCleanse)
    }
    
    func testParsesNormalComponent() {
        let input = InputSanitizer.split(text: ComponentFixtures.simpleComponentFixtures)
        let sanitizedInput = InputSanitizer.sanitize(text: input)
        let node = NodeSyntaxParser.parse(text: sanitizedInput).first!
        visitor.walk(node)
        XCTAssertEqual(visitor.components.count, 1)
        XCTAssertEqual(visitor.components.first!.isRoot, false)
        XCTAssertEqual(visitor.components.first!.rootType, "Int")
        XCTAssertEqual(visitor.components.first!.providers, [StandardProvider(type: "Int", dependencies: [], tag: nil, scoped: nil, collectionType: nil)])
    }
    
    func testParsesRootComponent() {
        let input = InputSanitizer.split(text: ComponentFixtures.simpleRootComponentFixture)
        let sanitizedInput = InputSanitizer.sanitize(text: input)
        let node = NodeSyntaxParser.parse(text: sanitizedInput).first!
        visitor.walk(node)
        XCTAssertEqual(visitor.components.count, 1)
        XCTAssertEqual(visitor.components.first!.isRoot, true)
        XCTAssertEqual(visitor.components.first!.rootType, "Int")
        XCTAssertEqual(visitor.components.first!.providers, [StandardProvider(type: "Int", dependencies: [], tag: nil, scoped: nil, collectionType: nil)])
    }
    
    func testNestedModule() {
        let input = InputSanitizer.split(text: ModuleFixtures.nestedModuleFixture)
        let sanitizedInput = InputSanitizer.sanitize(text: input)
        let node = NodeSyntaxParser.parse(text: sanitizedInput).first!
        visitor.walk(node)
        XCTAssertEqual(visitor.modules.count, 1)
        XCTAssertEqual(visitor.modules.first!.type, "Blah.Module")
    }
}

import XCTest
@testable import PetStore

final class PetStoreTests: XCTestCase {
    func testPetStore() throws {
        let _ = PetStoreModule()
        // XCTAssertEqual(PetStore().text, "Hello, World!")
    }
}

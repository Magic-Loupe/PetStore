import XCTest
@testable import PetStore

final class PetStoreTests: XCTestCase {
    func testPetStore() throws {
        let _ = PetStoreModule()
        let js = try Data(contentsOf: PetStoreModule.moduleURL.appendingPathComponent("PetStoreView.js"))
        XCTAssertNotEqual(0, js.count)
    }
}

import Foundation
import JXBridge
import JXKit
import JXSwiftUI

extension JXNamespace {
    static let petstore: JXNamespace = "petstore"
}

struct PetStoreModule: JXModule {
    var namespace: JXNamespace = .petstore
    static let moduleURL = Bundle.module.resourceURL!.appendingPathComponent("jxmodule", isDirectory: true)

    func register(with registry: JXRegistry) throws {
        try registry.register(JXSwiftUI())
        try registry.registerBridge(for: PetStoreModel(), namespace: namespace)
        try registry.registerBridge(for: Pet.random(), namespace: namespace)
        try registry.registerBridge(for: PetView.self, namespace: namespace)
        try registry.registerModuleScript(resource: "/PetStoreView.js", root: Self.moduleURL, namespace: namespace)
    }
}

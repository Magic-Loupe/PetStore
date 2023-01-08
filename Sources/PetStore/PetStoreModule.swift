import Foundation
import JXBridge
import JXKit
import JXSwiftUI

public extension JXNamespace {
    static let petstore: JXNamespace = "petstore"
}

public struct PetStoreModule: JXDynamicModule {
    public static var bundle = Bundle.module
    public static let namespace: JXNamespace = .petstore

    public func register(with registry: JXRegistry) throws {
        try registry.register(JXSwiftUI())
        try registry.registerBridge(for: PetStoreModel(), namespace: Self.namespace)
        try registry.registerBridge(for: Pet.random(), namespace: Self.namespace)
        try registry.registerBridge(for: PetView.self, namespace: Self.namespace)
        try registry.registerModuleScript(resource: "/PetStoreView.js", root: Self.localModuleRoot, namespace: Self.namespace)
    }
}

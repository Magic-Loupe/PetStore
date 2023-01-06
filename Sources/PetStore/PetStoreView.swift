import JXKit
import JXSwiftUI
import SwiftUI

public struct PetStoreView: View {
    let context: JXContext
    @Environment(\.dismiss) private var dismiss
    @StateObject private var model: PetStoreModel = {
        let model = PetStoreModel()
        model.load()
        return model
    }()
    
    public init(context: JXContext = JXContext()) {
        self.context = context
        do {
            try context.registry.register(PetStoreModule())
        } catch {
            print("PetStoreView: \(error)")
        }
    }
    
    public var body: some View {
        NavigationView {
            JXView(context: context) { context in
                return try context.new("petstore.PetListView", withArguments: [model])
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { dismiss() }) {
                        Image(systemName: "xmark.circle.fill")
                    }
                }
            }
        }
    }
}

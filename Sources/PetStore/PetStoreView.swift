import JXKit
import JXSwiftUI
import SwiftUI

struct PetStoreView: View {
    let context: JXContext
    @StateObject private var model: PetStoreModel = {
        let model = PetStoreModel()
        model.load()
        return model
    }()
    
    init(context: JXContext = JXContext()) {
        self.context = context
        do {
            try context.registry.register(PetStoreModule())
        } catch {
            print("PetStoreView: \(error)")
        }
    }
    
    var body: some View {
        JXView(context: context) { context in
            return try context.new("petstore.PetListView", withArguments: [model])
        }
    }
}

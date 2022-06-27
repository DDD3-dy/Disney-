//
//  ActorCellView.swift
//  Disney+
//
//  Created by Dylan Caetano on 15/06/2022.
//

import SwiftUI
import Kingfisher

struct ActorCellView: View {
    
    let viewModel: ActorCellViewModel
    
    var body: some View {
        VStack {
            KFImage(viewModel.url)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80)
                .clipShape(Circle())
            Text(viewModel.name)
                .font(.footnote)
                .fontWeight(.semibold)
            Text(viewModel.characterName)
                .font(.caption2)
                .foregroundColor(Color.white.opacity(0.5))
        }
        .fixedSize(horizontal: false, vertical: true)
        .foregroundColor(.white)
    }
}

struct ActorCellView_Previews: PreviewProvider {
    
    static let viewModel = ActorCellViewModel(
        url: URL(string: "https://www.themoviedb.org/t/p/w1280/83o3koL82jt30EJ0rz4Bnzrt2dd.jpg"),
        name: "Chris Prat",
        characterName: "Owen Grady"
    )
    
    static var previews: some View {
        ActorCellView(viewModel: viewModel)
        .padding()
        .background(Color.blue)
        .previewLayout(.sizeThatFits)
    }
}

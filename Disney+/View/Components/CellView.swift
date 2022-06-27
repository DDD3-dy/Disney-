//
//  CellView.swift
//  Disney+
//
//  Created by Dylan Caetano on 15/06/2022.
//

import SwiftUI
import Kingfisher

struct CellView: View {
    
    let viewModel: CellViewModel
    
    var body: some View {
        HStack {
            KFImage(viewModel.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 150)
                .clipped()
                .cornerRadius(8.0)
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(viewModel.title)
                            .font(.title2)
                            .fontWeight(.semibold)
                        Text("Film | \(viewModel.genres.joined(separator: " | "))")
                            .foregroundColor(.white.opacity(0.8))
                            .font(.caption)
                            .lineLimit(1)
                    }
                    Spacer()
                    CircleProgressBarView(progress: viewModel.rating)
                        .frame(width: 45, height: 45)
                        .padding(2.0)
                        .padding(.top, -30)
                }
                Text(viewModel.description)
                    .font(.callout)
                    .fontWeight(.light)
                    .lineLimit(3)
            }
            .foregroundColor(.white)
        }
    }
}

struct CellView_Previews: PreviewProvider {
    
    static let viewModel = CellViewModel(
        image: URL(string: "https://www.themoviedb.org/t/p/w1280/4tRxeoxwf6X8l3yWYJr1CniKm6O.jpg"),
        title: "Jurassic World 3",
        genres: ["Action", "Aventure", "Science-Fiction"],
        rating: 6.7,
        description: "Quatre ans après la destruction de Isla Nublar. Les dinosaures font désormais partie du quotidien de l’humanité entière. Un équilibre fragile qui va remettre en question la domination de l’espèce humaine maintenant qu’elle doit partager son espace avec les créatures les plus féroces que l’histoire ait jamais connues"
    )
    
    static var previews: some View {
        CellView(viewModel: viewModel)
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.blue)
    }
}

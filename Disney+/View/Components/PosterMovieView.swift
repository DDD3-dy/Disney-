//
//  PosterMovieView.swift
//  Disney+
//
//  Created by Dylan Caetano on 15/06/2022.
//

import SwiftUI
import Kingfisher

struct PosterMovieView: View {
    
    let viewModel: PosterMovieViewModel
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                KFImage(viewModel.imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 100, height: 150)
                    .clipped()
                VStack(alignment: .leading, spacing: 5.0) {
                    Text(viewModel.title)
                        .font(.system(size: 8.0))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    Text(viewModel.description)
                        .foregroundColor(Color.white.opacity(0.5))
                        .lineLimit(2)
                        .font(.system(size: 5.0))
                }
                .padding(4.0)
                .padding(.top, 50)
                .frame(width: 100)
                .background(
                    LinearGradient(gradient: Gradient(
                        colors: [.clear, Color.blue]),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
            }
            .cornerRadius(12)
        }
    }
}

struct PosterMovieView_Previews: PreviewProvider {
    
    static let viewModel = PosterMovieViewModel(
        imageURL: URL(string: "https://www.themoviedb.org/t/p/original/sKBwQga9qQji3hOgBWWV0K4ARYs.jpg"),
        title: "Jurassic World: Le monde d'Après",
        description: "Quatre ans après la destruction de Isla Nublar. Les dinosaures font désormais partie du quotidien de l’humanité entière. Un équilibre fragile qui va remettre en question la domination de l’espèce humaine maintenant qu’elle doit partager son espace avec les créatures les plus féroces que l’histoire ait jamais connues."
    )
    
    static var previews: some View {
        PosterMovieView(viewModel: viewModel)
        .padding(8)
        .background(Color.blue)
        .previewLayout(.sizeThatFits)
    }
}

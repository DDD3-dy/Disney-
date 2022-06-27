//
//  MovieDetailHeaderView.swift
//  Disney+
//
//  Created by Dylan Caetano on 15/06/2022.
//

import SwiftUI
import Kingfisher

struct MovieDetailHeaderView: View {
    
    let viewModel: MovieDetailHeaderViewModel
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottom) {
                KFImage(viewModel.imageURL)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 390, height: 250)
                    .clipped()
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading, spacing: 8.0) {
                        Text(viewModel.title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .lineLimit(1)
                        Text(viewModel.genre.joined(separator: " | "))
                            .foregroundColor(Color.white.opacity(0.5))
                            .font(.footnote)
                    }
                    Spacer()
                    CircleProgressBarView(progress: viewModel.rating)
                        .frame(width: 45, height: 45)
                        .padding(2.5)
                }
                .padding()
                .padding(.top, 90)
                .background(
                   LinearGradient(
                    gradient: Gradient(colors: [.clear, Color.blue]),
                    startPoint: .top,
                    endPoint: .bottom
                   )
                )
            }
        }
    }
}

struct MovieDetailHeaderView_Previews: PreviewProvider {
    
    static let viewModel = MovieDetailHeaderViewModel(
        imageURL: URL(string: "https://www.themoviedb.org/t/p/original/flTnaBaW1UnQtzGEIoHR7C3OYfy.jpg"),
        title: "Jurassic World : Le Monde d'Après",
        genre: ["Action, Aventure, Science-Fiction"],
        rating: 6.7
    )
    
    static var previews: some View {
        MovieDetailHeaderView(viewModel: viewModel)
            .previewLayout(.sizeThatFits)
    }
}

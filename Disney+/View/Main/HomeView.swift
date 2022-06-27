//
//  HomeView.swift
//  Disney+
//
//  Created by Dylan Caetano on 24/06/2022.
//

import SwiftUI

struct HomeView: View {
    
    let movieRepository = MockedMovieRepository()
    @State var medias = [Cell]()
    
    var body: some View {
        ScrollView {
            ForEach(medias) { medium in
                let cellModel = CellViewModel(
                    image: medium.image,
                    title: medium.title,
                    genres: medium.genre,
                    rating: medium.rating,
                    description: medium.description
                )
                CellView(viewModel: cellModel)
            }
        }
        .padding(10)
        .background(Color.accentColor.ignoresSafeArea())
        .onAppear(perform:  {
            medias = movieRepository.getCineCell()
        })
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

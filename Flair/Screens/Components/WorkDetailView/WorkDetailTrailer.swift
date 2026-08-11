//
//  WorkDetailTrailer.swift
//  Flair
//
//  Created by imane on 08/08/2026.
//

import SwiftUI

struct WorkDetailTrailer: View {

    let work: Work

    var body: some View {

        if let url = work.url,
            // Récupération de l'ID YouTube
            // absolutString : récupère l'URL en String
            // Components(separatorBy : ) : couper le texte à partie de "v="
            let videoID = url.absoluteString.components(separatedBy: "v=").last
        {

            VStack {
                WorkDetailTitle(text: "Trailer")

                Link(destination: url) {
                    // AsyncImage : charge une image depuis Internet
                    AsyncImage(
                        url: URL(
                            string:
                                "https://img.youtube.com/vi/\(videoID)/maxresdefault.jpg"
                        )
                        // image : image que AsyncImage vient de télécharger
                        // image : variable, qui contient l'image chargée
                    ) { image in
                        image
                            .resizable()
                            .scaledToFill()
                    // Pendant le téléchargement, affiche un ProgressView
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(height: 206)
                    .padding(.top, 24)
                }
            }

        } else {

            Text("")
        }
    }
}

#Preview {
    WorkDetailTrailer(work: works[0])
}

#Preview {
    WorkDetailTrailer(work: works[4])
}

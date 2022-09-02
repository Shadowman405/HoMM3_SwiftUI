//
//  ArtifactsList.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 2.09.22.
//

import SwiftUI

struct ArtifactsList: View {
    @EnvironmentObject var mainCat: MainCategory
    
    var body: some View {
        List {
            ForEach(mainCat.artifacts){ artifact in
                ZStack {
                    HStack {
                        Image(artifact.imageName)
                        Text(artifact.name)
                            .font(.title2)
                    }
                    
                    NavigationLink {
                        ArtifactDetailsView(artifact: artifact)
                    } label: {
                        Text("")
                    }
                }
            }
        }
        .navigationTitle("Artifacts")
    }
}

struct ArtifactsList_Previews: PreviewProvider {
    static var previews: some View {
        ArtifactsList()
            .environmentObject(MainCategory())
    }
}

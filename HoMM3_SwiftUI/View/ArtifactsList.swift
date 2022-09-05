//
//  ArtifactsList.swift
//  HoMM3_SwiftUI
//
//  Created by Maxim Mitin on 2.09.22.
//

import SwiftUI

struct ArtifactsList: View {
    @EnvironmentObject var mainCat: MainCategory
    
    @State private var searchText = ""
    
    var body: some View {
        List {
            ForEach(searchResults){ artifact in
                ZStack(alignment:.leading) {
                    HStack{
                        ZStack {
                            Circle().foregroundColor(.indigo)

                            
                            Image(artifact.imageName)
                                .clipShape(Circle().stroke(lineWidth: 80))
                            .shadow(color: .orange, radius: 10)
                        }
                        .frame(width: 50, height: 50)
                        
                        
                        
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
        .searchable(text: $searchText)
    }
    
    var searchResults: [Artifact] {
        if searchText.isEmpty {
            return mainCat.artifacts
        } else {
            return mainCat.artifacts.filter { $0.name.contains(searchText) }
        }
    }

}

struct ArtifactsList_Previews: PreviewProvider {
    static var previews: some View {
        ArtifactsList()
            .environmentObject(MainCategory())
    }
}

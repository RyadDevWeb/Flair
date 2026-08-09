//
//  WorkTableView.swift
//  flair
//
//  Created by imane on 29/07/2026.
//

import SwiftUI

struct WorkTableView: View {

    let work: Work

    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 24) {
                
                // Lieux
                HStack {
                    WorkDetailTitle(text: "Lieux")
                    
                    Spacer()
                    
                    NavigationLink(destination: WorkLocationGridView(workLocations: work.locations)) {
                        TextButtonVoirPlus()
                    }
                }
                
                ScrollView(.horizontal) {
                    HStack(spacing: 24) {
                        
                        ForEach(work.locations) {
                            location in
                            
                            NavigationLink(destination: WorksDetailLocationView(workLocation: location)) {
                                WorkLocationCard(workLocation: location)
                            }
                        }
                    }
                }.scrollIndicators(.hidden)
                
                // Personnages
                HStack {
                    WorkDetailTitle(text: "Personnages")
                
                    Spacer()
                    
                    NavigationLink(destination: WorkCharactersGridView(workCharacters: work.characters)) {
                        TextButtonVoirPlus()
                    }
                }
                
                ScrollView(.horizontal) {
                    HStack(spacing: 24) {
                        
                        ForEach(work.characters) {
                            character in
                            NavigationLink(destination: WorksDetailCharacterView(workCharacter : character)) {
                                WorkCharacterCard(workCharacter: character)
                            }
                        }
                    }
                }.scrollIndicators(.hidden)
                
                // Chronologie
                HStack {
                    WorkDetailTitle(text: "Chronologie")
                    
                    Spacer()
                    
                    NavigationLink(destination : WorkEventsGridView(workEvents: work.datesChronology)) {
                        TextButtonVoirPlus()
                    }
                }
                        
                        ForEach(work.datesChronology) {
                            chronology in
                            NavigationLink(destination: WorksDetailTimelineView(workEvent : chronology)) {
                                WorkEventCard(workEvent: chronology)
                            }
                                .padding(.bottom, 24)
                        }
                
                                    
                // Organisations
                HStack {
                    WorkDetailTitle(text: "Organisations")
                    
                    Spacer()
                    
                    NavigationLink(destination: WorkOrganizationsGridView(workOrganizations: work.organizations)) {
                        TextButtonVoirPlus()
                    }
                }
                
                ScrollView(.horizontal) {
                    HStack(spacing: 24) {
                        
                        ForEach(work.organizations) {
                            organization in
                            NavigationLink(destination: WorksDetailOrganizationView(workOrganization : organization)) {
                                WorkOrganizationCard(workOrganization: organization)
                            }
                        }
                    }
                }.scrollIndicators(.hidden)
                
            }.padding(.horizontal, 16)
        }
    }
}

#Preview {
    NavigationStack {
        WorkTableView(work: works[0])
    }
}

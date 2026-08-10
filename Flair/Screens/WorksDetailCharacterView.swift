//
//  WorksDetailCharacterView.swift
//  flair
//
//  Created by Apprenant131 on 29/07/2026.
//

import SwiftUI

struct WorksDetailCharacterView: View {
    

    let workCharacter : WorkCharacter

    
    var body: some View {
        ZStack {
            Color(red: 0.06, green: 0.07, blue: 0.07)
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading, spacing: 28) {
                    
                    // MARK: - IMAGE
                    
                    Image(workCharacter.detailImage)
                        .resizable()
                        .scaledToFill()
                        .frame(height: 295)
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .clipShape(
                            RoundedRectangle(cornerRadius: 24)
                        )
                    
                    Text(workCharacter.summary)
                        .foregroundStyle(.white)
                    
                    // MARK: - TITRE
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("EREN JAGER")
                            .font(.system(size: 38, weight: .black))
                            .foregroundStyle(.white)
                        
                        Text("BATAILLON D'EXPLORATION")
                            .font(.system(size: 13, weight: .semibold, design: .monospaced))
                            .tracking(3)
                            .foregroundStyle(
                                Color(red: 1, green: 0.82, blue: 0.52)
                            )
                    }
                    .padding(.horizontal, 12)
                    
                    // MARK: - PIECE IDENTITÉ
                    
                    ZStack {
                        Rectangle()
                            .fill(.white)
                            .frame(height: 180)
                        
                        Text("PIECE IDENTITÉ")
                            .font(.system(size: 29, weight: .regular))
                            .foregroundStyle(.black)
                    }
                    
                    // MARK: - INFORMATIONS
                    
                    LazyVGrid(
                        columns: [
                            GridItem(.flexible(), spacing: 14),
                            GridItem(.flexible())
                        ],
                        spacing: 18
                    ) {
                        
                        InfoCard(
                            icon: "birthday.cake",
                            title: "AGE",
                            value: "15 ans (Saison 1)"
                        )
                        
                        InfoCard(
                            icon: "mappin.circle",
                            title: "ORIGINE",
                            value: "Shiganshina"
                        )
                        
                        InfoCard(
                            icon: "figure.fencing",
                            title: "AFFILIATION",
                            value: "Bataillon"
                        )
                        
                        InfoCard(
                            icon: "waveform.path.ecg",
                            title: "STATUT",
                            value: "Vivant"
                        )
                    }
                    
                    // MARK: - DESCRIPTION
                    
                    VStack(alignment: .leading, spacing: 22) {
                        
                        Text("""
Eren Yeager est le personnage principal de L'Attaque des Titans. Né dans le district de Shiganshina, il rêve depuis son enfance de découvrir le monde situé au-delà des murs et de vivre librement. Déterminé, courageux et parfois impulsif, il refuse de rester enfermé et souhaite protéger ceux qui lui sont chers.
""")
                        
                        Text("""
Après avoir intégré l'armée aux côtés de Mikasa Ackerman et Armin Arlert, Eren rejoint le Bataillon d'Exploration, où il participe à de nombreuses missions contre les Titans. Son caractère combatif et sa volonté de se battre pour la liberté font de lui l'un des personnages les plus marquants de l'œuvre.
""")
                        
                        Text("""
Au fil de l'histoire, Eren évolue énormément, passant d'un jeune garçon idéaliste à un personnage confronté à des choix difficiles qui influenceront le destin de l'humanité.
""")
                    }
                    .font(.system(size: 16))
                    .foregroundStyle(.white.opacity(0.92))
                    .lineSpacing(2)
                    
                }
                .padding(.horizontal, 13)
                .padding(.top, 20)
                .padding(.bottom, 40)
            }
        }
    }
}


// MARK: - CARTE D'INFORMATION

struct InfoCard: View {
    
    let icon: String
    let title: String
    let value: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 7) {
            
            Image(systemName: icon)
                .font(.system(size: 19, weight: .semibold))
                .foregroundStyle(
                    Color(red: 1, green: 0.82, blue: 0.52)
                )
            
            Text(title)
                .font(.system(size: 11, weight: .medium, design: .monospaced))
                .tracking(2)
                .foregroundStyle(
                    Color(red: 0.88, green: 0.79, blue: 0.63)
                )
            
            Text(value)
                .font(.system(size: 15))
                .foregroundStyle(.white.opacity(0.9))
            
            Spacer()
        }
        .frame(maxWidth: .infinity, minHeight: 96, alignment: .topLeading)
        .padding(14)
        .background(
            Color.white.opacity(0.025)
        )
        .overlay {
            RoundedRectangle(cornerRadius: 12)
                .stroke(
                    Color.white.opacity(0.12),
                    lineWidth: 1
                )
        }
        .clipShape(
            RoundedRectangle(cornerRadius: 12)
        )
    }
}

#Preview {
    WorksDetailCharacterView(workCharacter: works[0].characters[1])
}


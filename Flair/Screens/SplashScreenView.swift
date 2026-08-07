import SwiftUI

struct SplashScreenView: View {

    var body: some View {

        ZStack {

            Color.card
                .ignoresSafeArea()

            VStack {

                HStack(alignment: .top, spacing: 1) {
                    Image("frierenUnboarding")
                    Image("jujutsukaisenUnboarding")
                }

                HStack(spacing: 1) {
                    Image("demonSliyerUnboarding")
                    Image("narutoUnboarding")
                    Spacer()
                }
                .offset(y: -151)

                HStack {
                    Image("attaqueDesTitansUnboarding")
                }
                .offset(y: -158)

                HStack(spacing: 1) {
                    Image("onePeaceUnboarding")
                    Image("zeroUnboarding")
                }
                .offset(y: -165)

                HStack(spacing: 1) {
                    Image("lesCarnetsDeLapothicaireUnboarding")
                        .offset(y: -243)

                    Image("soloLevelingUnboarding")
                        .offset(y: -171)
                }

                HStack(spacing: 1) {
                    Image("dadandanUnboarding")
                    Image("arcaneUnboarding")
                    Spacer()
                }
                .offset(y: -321)
            }
            .saturation(0)

            Color.black.opacity(0.8)

            // Contenu principal
            VStack {
                
                                
                Image("logoDark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 198, height: 169)
                    .offset(y: -321)
                
                Text("Pour comprendre certaines œuvres,\nil faut du flair.")
                    .font(.title3)
                    .fontWeight(.medium)
                    .foregroundStyle(.textPrimary)
                    .multilineTextAlignment(.center)
                    
                
            }
        }
        .offset(y: 150)
    }
}

#Preview {
    SplashScreenView()
}

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image(systemName: "stethoscope")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.white)
                    
                    Text("CliniCampus")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding(.vertical)
                    
                    Spacer()
                }
                .padding()
                .background(Color.cabecalho)
                
                GeometryReader { geometry in
                    VStack(alignment: .leading, spacing: 30) {
                        
                        HStack(spacing: 7) {
                            NavigationLink(destination: AreaConsultaView()) {
                                VStack {
                                     
                                        
                                        Image(systemName: "calendar.badge.plus")
                                            .font(.largeTitle)
                                            .foregroundColor(Color.cabecalho)
                            
                                        
                                    
                                    Text("Agendar consulta")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                                .padding(20)
                                .frame(width: geometry.size.width / 3 - 10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            }
                            
                            NavigationLink(destination: ConsultasAgendadas()) {
                                VStack {
                                        
                                        Image(systemName: "list.bullet")
                                            .font(.largeTitle)
                                            .foregroundColor(Color.cabecalho)
                                    
                                    Text("Consultas agendadas")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                                .padding(10)
                                .padding(.vertical,15)

                                .frame(width: geometry.size.width / 3 - 10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            }
                            
                            NavigationLink(destination: HistoricoConsultasView()) {
                                VStack {
                                        
                                        Image(systemName: "doc.text.below.ecg")
                                            .font(.largeTitle)
                                            .foregroundColor(Color.cabecalho)
                                    Text("Histórico Consultas")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                                .padding(10)
                                
                                .padding(.vertical,10)
                                .frame(width: geometry.size.width / 3 - 10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            }
                        }
                        
                        VStack(spacing: 30){
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Próximos agendamentos")
                                    .font(.headline)
                                
                                NavigationLink(destination: ConsultasAgendadas()) {
                                    ZStack(alignment: .leading) {
                                       Color.gray.opacity(0.2)

                                            .edgesIgnoringSafeArea(.all)
                                        
                                        VStack(alignment: .leading) {
                                            HStack(spacing:30){
                                                Text("Sem consultas agendadas")
                                                    .foregroundColor(.gray)
                                                    .font(.subheadline)
                                                NavigationLink(destination: AreaConsultaView()){
                                                    Text("Agendar")
                                                    Image(systemName: "plus")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 20,height: 11.5)
                                                }
                                                .padding(.horizontal,20)
                                                .padding(.vertical,8)
                                                .background(Color.cabecalho)
                                                .cornerRadius(10)
                                                .foregroundColor(.white)
                                            }
                                        }
                                        .foregroundColor(.black)
                                        .padding(.leading,30)
                                    }
                                    .cornerRadius(10)
                                }
                                
                                
                            }
                            
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Campanhas")
                                    .font(.headline)
                                
                                Link(destination: URL(string: "https://www.google.com/?client=safari")!) {
                                    Image("campanha1")
                                        .resizable()
                                        .frame(width: geometry.size.width - 40)
                                        .aspectRatio(contentMode: .fit)
                                        .cornerRadius(10)
                                }
                            }
                        }
                        .padding(.leading)
                        
                    }
                    .padding()
                    .frame(width: geometry.size.width)
                }
            }
        }
        
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MainView()
}

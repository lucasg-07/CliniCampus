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
                                    ZStack {
                                        Circle()
                                            .fill(Color.cabecalho)
                                            .frame(width: 60, height: 60)
                                        Image(systemName: "calendar.badge.plus")
                                            .font(.largeTitle)
                                            .foregroundColor(.white)
                                            
                                    }
                                    Text("Agendar consulta")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .frame(width: geometry.size.width / 3 - 10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            }
                            
                            NavigationLink(destination: ConsultasAgendadas()) {
                                VStack {
                                    ZStack {
                                        Circle()
                                            .fill(Color.cabecalho)
                                            .frame(width: 60, height: 60)
                                        Image(systemName: "list.bullet")
                                            .font(.largeTitle)
                                            .foregroundColor(.white)
                                    }
                                    Text("Consultas agendadas")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .frame(width: geometry.size.width / 3 - 10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            }
                            
                            NavigationLink(destination: HistoricoConsultasView()) {
                                VStack {
                                    ZStack {
                                        Circle()
                                            .fill(Color.cabecalho)
                                            .frame(width: 60, height: 60)
                                        Image(systemName: "doc.text.below.ecg")
                                            .font(.largeTitle)
                                            .foregroundColor(.white)
                                    }
                                    Text("Histórico Consultas")
                                        .font(.subheadline)
                                        .foregroundColor(.black)
                                }
                                .padding()
                                .frame(width: geometry.size.width / 3 - 10)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                            }
                        }

                        VStack(spacing: 30){
                            VStack(alignment: .leading, spacing: 10) {
                                Text("Próximos agendamentos")
                                    .font(.headline)
                                
                                HStack {
                                    Text("Sem agendamentos")
                                        .font(.footnote)
                                        .foregroundColor(.gray)
                                        .padding(.trailing)
                                    
                                    Spacer()
                                    
                                    NavigationLink(destination: AreaConsultaView()) {
                                        HStack {
                                            Text("Agendar")
                                            Image(systemName: "plus")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 40, height: 16)
                                        }
                                        .padding(.horizontal, 10)
                                        .padding(.vertical, 8)
                                        .background(.cabecalho)
                                        .cornerRadius(10)
                                        .foregroundColor(.white)
                                    }
                                }
                                .padding(.horizontal,20)
                                .padding(.vertical,50)
                                .background(Color.gray.opacity(0.2))
                                .cornerRadius(10)
                                
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

//
//  ContentView.swift
//  Resnet50
//
//

import SwiftUI
import CoreML
import Vision

//UIImageを拡張してURLも対応できるようにした
extension UIImage {
    public convenience init(url: String) {
        let url = URL(string: url)
        do {
            let data = try Data(contentsOf: url!)
            self.init(data: data)!
            return
        } catch let err {
            print("Error : \(err.localizedDescription)")
        }
        self.init()
    }
}




struct ContentView: View {

    @State var classificationLabel = ""
    @State var textEntered: String=""

    // リクエストを作成
    func createClassificationRequest() -> VNCoreMLRequest {
        do {
            let configuration = MLModelConfiguration()

            let model = try VNCoreMLModel(for: Resnet50(configuration: configuration).model)

            let request = VNCoreMLRequest(model: model, completionHandler: { request, error in
                performClassification(request: request)
            })

            return request

        } catch {
            fatalError("modelが読み込めません")
        }
    }

    // 画像分類の処理
    func performClassification(request: VNRequest) {
        guard let results = request.results else {
            return
        }

        let classification = results as! [VNClassificationObservation]

        classificationLabel = classification[0].identifier
    }

    // 実際に画像を分類する
    func classifyImage(image: UIImage){
        // 入力された画像の型をUIImageからCIImageに変換
        guard let ciImage = CIImage(image: image) else {
            fatalError("CIImageに変換できません")
        }

        // handlerを作る
        let handler = VNImageRequestHandler(ciImage: ciImage)

        // requestを作成
        let classificationRequest = createClassificationRequest()

        // handlerを実行する
        do {
            try handler.perform([classificationRequest])
        } catch {
            fatalError("画像分類に失敗しました")
        }
    }

    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            Image("back").edgesIgnoringSafeArea(.all)
            VStack {

                if(classificationLabel==""){
                    Text("【Anything Dictionary】")
                        .frame(width: 400, height: 50)
                        .padding()
                        .font(.title)
                    //                        .background(.blue)
                }else{
                    Text("【Answer】\(classificationLabel)")
                        .frame(width: 400, height: 50)
                        .padding()
                        .font(.title3)

                }

                //画像

                if(textEntered==""){
                    Image("POKEMON")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 300, height: 280)
                        .clipShape(Rectangle())
                        .offset(y:35)

                }else{
                    AsyncImage(url: URL(string: textEntered == "" ? "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png" :textEntered)) { response in
                        response.image?
                            .resizable()
                            .scaledToFill()
                            .frame(width: 300, height: 280)
                            .clipShape(Rectangle())
                            .offset(y:35)
                    }
                }
                //URL
                TextField("Please include the URL!!",text: $textEntered)
                    .frame(width: 300, height: 0)
                    .padding()
                    .background(.gray)
                    .cornerRadius(20)
                    .shadow(color: .black, radius: 0, x: 0, y: -2)
                    .offset(y:70)
                    .padding()
                //                    .cornerRadius(1)




                //ボタン１
                Button(action: {
                    //                classifyImage(image: UIImage(named: "cat")!)
                    classifyImage(image: UIImage(url: textEntered))
                }, label: {
                    Text("What is this?")
                })
                .frame(width: 140, height: 10)
                .padding()
                .foregroundColor(.black)
                .background(Color(hue: 0.049, saturation: 0.991, brightness: 0.995))
                .cornerRadius(20)
                .shadow(color: .black, radius: 0, x: 0, y: -2)
                .offset(x:-60,y:70)
                .disabled((textEntered == ""))





                //ボタン２
                Button {
                    textEntered = ""
                    classificationLabel=""
                } label: {
                    Text("Delete URL")
                }
                .frame(width: 140, height: 10)
                .padding()
                .foregroundColor(.black)
                .background(Color(hue: 0.568, saturation: 1.0, brightness: 1.0))
                .cornerRadius(20)
                .shadow(color: .black, radius: 0, x: 0, y: -2)
                .offset(x:-60,y:80)

            }
            .offset(y:20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




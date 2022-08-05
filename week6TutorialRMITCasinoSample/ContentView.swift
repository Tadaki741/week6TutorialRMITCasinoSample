

import SwiftUI

struct ContentView: View {
    
    let roundRect = RoundedRectangle(cornerRadius: 20)
    @State var flag: Bool = false;

    var body: some View {
        
       
        Image(getRandomName());
        
        //Sample button
        Button("test"){
            
            
        }.frame(width: 70, height: 30)
        .background(roundRect.fill(Color.orange))
        .overlay(roundRect.stroke())
        
        
        
    }
    
    func getRandomName() -> String {
        let randomName: [String] = ["bell","apple","cherry"];
        //Shuffle the array
        let randomIndex = Int.random(in: 0...2)
        let returnResult: String = randomName[randomIndex]
        return returnResult;
    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

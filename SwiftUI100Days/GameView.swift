////
////  GameView.swift
////  SwiftUI100Days
////
////  Created by Offsureit Solutions on 21/04/23.
////
//
//https://betterprogramming.pub/how-to-create-the-snake-game-in-swiftui-14a7e8162bf3
//
//import SwiftUI
//
//enum direction {
//    case up, down, left, right
//}
//struct GameView: View {
//  
//  @State var startPos : CGPoint = .zero // the start poisition of our swipe
//  @State var isStarted = true // did the user started the swipe?
//  @State var gameOver = false // for ending the game when the snake hits the screen borders
//  @State var dir = direction.down // the direction the snake is going to take
//  @State var posArray = [CGPoint(x: 0, y: 0)] // array of the snake's body positions
//  @State var foodPos = CGPoint(x: 0, y: 0) // the position of the food
//  let snakeSize : CGFloat = 10 // width and height of the snake
//  let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect() // to
//  var body: some View {
//    ZStack {
//                Color.pink.opacity(0.3)
//                ZStack {
//                    ForEach (0..<posArray.count, id: \.self) { index in
//                        Rectangle()
//                            .frame(width: self.snakeSize, height: self.snakeSize)
//                            .position(self.posArray[index])
//                    }
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(width: snakeSize, height: snakeSize)
//                        .position(foodPos)
//                }
//                
//                if self.gameOver {
//                    Text("Game Over")
//                }
//            }
//    
//    
//    let minX = UIScreen.main.bounds.minX
//    let maxX = UIScreen.main.bounds.maxX
//    let minY = UIScreen.main.bounds.minY
//    let maxY = UIScreen.main.bounds.maxY
//
//    func changeRectPos() -> CGPoint {
//            let rows = Int(maxX/snakeSize)
//            let cols = Int(maxY/snakeSize)
//            
//            let randomX = Int.random(in: 1..<rows) * Int(snakeSize)
//            let randomY = Int.random(in: 1..<cols) * Int(snakeSize)
//            
//            return CGPoint(x: randomX, y: randomY)
//        }
//  }
//}
//
//struct GameView_previews: PreviewProvider {
//  static var previews: some View {
//    GameView()
//  }
//}

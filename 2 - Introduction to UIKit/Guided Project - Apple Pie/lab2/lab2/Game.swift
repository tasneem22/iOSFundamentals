//
//  Game.swift
//  lab2
//
//  Created by Tasneem Toolba on 29.01.2022.
//

import Foundation

struct Game {
    var word: String
    var incorrectMovesRemaining: Int
    var guessedLetters: [Character]
    var formattedWord: [String]{
        var guessedWord : [String] = []
        for letter in word{
            if guessedLetters.contains(letter){
                guessedWord.append(String("\(letter)"))
            }else{
                guessedWord.append("_")
            }
        }
        return guessedWord
    }
    mutating func playerGuessed(letter: Character) {
      guessedLetters.append(letter)
      if !word.contains(letter) {
        incorrectMovesRemaining -= 1
      }
    }
}

//
//  Game.swift
//  test
//
//  Created by Аяз on 21/3/23.
//

import Foundation
//Создать класс Hero c параметрами здоровье и урон добавить функции сеттеры и геттеры к парметрам. Создать класс Boss, Magic, Archer, Tank унаследовать от Hero. Создать класс Game. В Game прописать логику игры: 3 героя должны сражаться с боссом, игра продолжается до последнего выжившего, у кого здоровье отрицательное не должен наносить урон. В Game должна быть функция startGame() которая запускает игру. В main должна быть только одна строчка: Game().startGame()

class Game{
    var heroes: [Hero] = []
    var boss: Boss = Boss(health: 1000, damage: 100)
    
    init() {
        let hero1 = Magic(health: 200, damage: 50)
        let hero2 = Archer(health: 250, damage: 40)
        let hero3 = Tank(health: 500, damage: 20)
        heroes.append(hero1)
        heroes.append(hero2)
        heroes.append(hero3)
    }
    
    func startGame() {
        while true {
            var isBossAlive = true
            for hero in heroes {
                if hero.health > 0 {
                    boss.health -= hero.damage
                    if boss.health <= 0 {
                        isBossAlive = false
                        break
                    }
                }
            }
            if !isBossAlive {
                print("Ты выиграл!!! WINS!!!")
                break
            }
            for hero in heroes {
                if hero.health > 0 {
                    hero.health -= boss.damage
                    if hero.health <= 0 {
                        print("Ты проиграл!!!!!!")
                        return
                    }
                }
            }
        }
    }
}



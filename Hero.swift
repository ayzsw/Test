//
//  Hero.swift
//  test
//
//  Created by Аяз on 21/3/23.
//

import Foundation

// Создать класс Hero c параметрами здоровье и урон добавить функции сеттеры и геттеры к парметрам. Создать класс Boss, Magic, Archer, Tank унаследовать от Hero. Создать класс Game. В Game прописать логику игры: 3 героя должны сражаться с боссом, игра продолжается до последнего выжившего, у кого здоровье отрицательное не должен наносить урон. В Game должна быть функция startGame() которая запускает игру. В main должна быть только одна строчка: Game().startGame()

class Hero{
    var health: Int
    var damage: Int
    
    init(health: Int, damage: Int) {
        self.health = health
        self.damage = damage
    }
    
    func setHealth(_ health: Int) {
        self.health = health
    }
    
    func getHealth() -> Int {
        return self.health
    }
    
    func setDamage(_ damage: Int) {
        self.damage = damage
    }
    
    func getDamage() -> Int {
        return self.damage
    }

}

//
//  main.swift
//  프로그래머스_네트워크
//
//  Created by 김병엽 on 2023/11/02.
//
import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    
    var visited = Array(repeating: false, count: n)
    var count = 0
    
    func dfs(_ com: Int) {
        
        visited[com] = true
        for i in 0..<n {
            if computers[com][i] == 1 && !visited[i] {
                dfs(i)
            }
        }
    }
    
    for i in 0..<n {
        
        if !visited[i] {
            count += 1
            dfs(i)
        }
    }
    
    return count
}

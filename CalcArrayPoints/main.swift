//
//  main.swift
//  CalcArrayPoints
//
//  Created by Quan Nguyen on 4/4/17.
//  Copyright © 2017 Quan Nguyen. All rights reserved.
//

import Foundation

func add(left : Int, right : Int) -> Int {
    return left + right;
}

func subtract(left : Int, right : Int) -> Int {
    return left - right;
}

func multiply(left : Int, right : Int) -> Int{
    return left*right;
}

func divide(left : Int, right : Int) -> Int{
    return left/right;
}

func mathOperation(left : Int, right : Int, operation : (Int, Int) -> Int) -> Int {
    return operation(left, right);
}

func add(array : [Int]) -> Int {
    var sum : Int = 0;
    for num in array {
        sum += num;
    }
    return sum;
}

func multiply(array : [Int]) -> Int {
    var product : Int = 1;
    for num in array {
        product *= num
    }
    return product;
}

func count(array : [Int]) -> Int {
    var count = 0;
    for _ in array {
        count+=1;
    }
    return count;
}

func average(array : [Int]) -> Int {
    var sum = 0;
    var count = 0;
    for num in array {
        sum+=num
        count+=1
    }
    return sum / count;
}

func reduce(array : [Int], operation : ([Int]) -> Int) -> Int {
    return operation(array);
}

func add(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int){
    let size1 = Mirror(reflecting: p1).children.count;
    let size2 = Mirror(reflecting: p2).children.count;
    if(size1 > 2 || size2 > 2){
        return (0, 0);
    }else{
        return (p1.0 + p2.0, p1.1 + p2.1)
    }
}

func subtract(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int){
    let size1 = Mirror(reflecting: p1).children.count;
    let size2 = Mirror(reflecting: p2).children.count;
    if(size1 > 2 || size2 > 2){
        return (0, 0);
    }else{
        return (p1.0 - p2.0, p1.1 - p2.1)
    }
}

func add(p1 : [String : Int]?, p2 : [String : Int]?) -> Optional<[String : Int]>{
    var result : [String : Int] = [String: Int]()
    if(p1?["x"] == nil || p1?["y"] == nil || p2?["x"] == nil || p2?["y"] == nil){
        return nil;
    }
    result["x"] = (p1?["x"]!)! + (p2?["x"]!)!;
    result["y"] = (p1?["y"]!)! + (p2?["y"]!)!;
    return result;
}

func add(p1 : [String : Double]?, p2 : [String : Double]?) -> Optional<[String : Double]>{
    var result : [String : Double] = [String: Double]()
    if(p1?["x"] == nil || p1?["y"] == nil || p2?["x"] == nil || p2?["y"] == nil){
        return nil;
    }
    result["x"] = (p1?["x"]!)! + (p2?["x"]!)!;
    result["y"] = (p1?["y"]!)! + (p2?["y"]!)!;
    return result;
}

func subtract(p1 : [String : Int]?, p2 : [String : Int]?) -> Optional<[String : Int]>{
    var result : [String : Int] = [String: Int]()
    if(p1?["x"] == nil || p1?["y"] == nil || p2?["x"] == nil || p2?["y"] == nil){
        return nil;
    }
    result["x"] = (p1?["x"]!)! - (p2?["x"]!)!;
    result["y"] = (p1?["y"]!)! - (p2?["y"]!)!;
    return result;
}

func subtract(p1 : [String : Double]?, p2 : [String : Double]?) -> Optional<[String : Double]>{
    var result : [String : Double] = [String: Double]()
    if(p1?["x"] == nil || p1?["y"] == nil || p2?["x"] == nil || p2?["y"] == nil){
        return nil;
    }
    result["x"] = (p1?["x"]!)! - (p2?["x"]!)!;
    result["y"] = (p1?["y"]!)! - (p2?["y"]!)!;
    return result;
}


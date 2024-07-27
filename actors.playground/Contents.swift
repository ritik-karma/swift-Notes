import UIKit

//MARK: Can use 'Actors' instead of 'semaphore' 'GCD with serial Queues' etc for modern programming.


///Similar to clases but only accessible to immutable things & func But you can access it with  await . also nt ssupport inherritence
///UseCase: Used to do sequentially asyc operation


class Student2 {
    let name = "chagan"
    var num = 0
    
    func incrementNum ()-> Int {
        num += 1
        return num
    }
}

actor Student1 {    ///write op comes only after read while doing concurrency which is not in class or struct
    let name: String = "Pawan"
    var rank: Int = 0
    func studRank()-> Int{
        rank += 1
        return rank
    }
}





let classStud = Student2()
classStud.name
classStud.num

let actorStud = Student1()
actorStud.name
//student1.rank           ///In class you won't get an errorr
await actorStud.rank
await actorStud.studRank()
await actorStud.rank




///Printing num 0-50 asyncronously in both class & actor

DispatchQueue.concurrentPerform(iterations: 50) { _ in
    ///Don't know what comes first read or write.
    print(classStud.incrementNum())
}                   ///OR
for _ in 0...20 {
    DispatchQueue.global().async {
        print(classStud.incrementNum())
    }
}


DispatchQueue.concurrentPerform(iterations: 20) { _ in
    ///It will print sequentially async operattion   because of actors first doing read then write
    Task{
        print(await actorStud.studRank())
    }
}


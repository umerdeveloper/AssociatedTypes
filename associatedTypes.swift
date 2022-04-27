import Foundation

// Associated Types
// It's a placeholder name of a type to use until the protocol is adopted and the exact type is specified

// we can not make protocols as generics, so here associated types comes handy
protocol FeedBusinessLogic {
    associatedtype Model // placeholder until protocol adopted
    func get(completion: @escaping (Result<Model, Error>) -> Void)
}

struct Post: Codable {}
struct Comment: Codable {}
struct Tag: Codable {}

struct PostWorker: FeedBusinessLogic {
    // type set, we can remove it and just set inside method is enough which you can see in other workers
    typealias Model = Post

    func get(completion: @escaping (Result<Post, Error>) -> Void) {
    }
}

struct CommentWorker: FeedBusinessLogic {
    func get(completion: @escaping (Result<Comment, Error>) -> Void) {
    }
}

struct TagWorker: FeedBusinessLogic {
    func get(completion: @escaping (Result<Tag, Error>) -> Void) {
    }
}

/// Now we can add further methods in FeedBusinessLogic as needed e.g. POST

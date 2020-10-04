// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public final class AllPostsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query AllPosts {
      getUsers {
        __typename
        id
        name
      }
    }
    """

  public let operationName: String = "AllPosts"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("getUsers", type: .list(.object(GetUser.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(getUsers: [GetUser?]? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "getUsers": getUsers.flatMap { (value: [GetUser?]) -> [ResultMap?] in value.map { (value: GetUser?) -> ResultMap? in value.flatMap { (value: GetUser) -> ResultMap in value.resultMap } } }])
    }

    public var getUsers: [GetUser?]? {
      get {
        return (resultMap["getUsers"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [GetUser?] in value.map { (value: ResultMap?) -> GetUser? in value.flatMap { (value: ResultMap) -> GetUser in GetUser(unsafeResultMap: value) } } }
      }
      set {
        resultMap.updateValue(newValue.flatMap { (value: [GetUser?]) -> [ResultMap?] in value.map { (value: GetUser?) -> ResultMap? in value.flatMap { (value: GetUser) -> ResultMap in value.resultMap } } }, forKey: "getUsers")
      }
    }

    public struct GetUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .scalar(GraphQLID.self)),
          GraphQLField("name", type: .nonNull(.scalar(String.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(id: GraphQLID? = nil, name: String) {
        self.init(unsafeResultMap: ["__typename": "User", "id": id, "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID? {
        get {
          return resultMap["id"] as? GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      public var name: String {
        get {
          return resultMap["name"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }
    }
  }
}

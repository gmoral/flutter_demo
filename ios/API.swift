//  This file was automatically generated and should not be edited.

import AWSAppSync

public final class CreateTaskMutation: GraphQLMutation {
  public static let operationString =
    "mutation CreateTask($owner: String!, $title: String!, $taskStatus: String!, $description: String!) {\n  createTask(owner: $owner, title: $title, taskStatus: $taskStatus, description: $description) {\n    __typename\n    id\n    owner\n    title\n    description\n    taskStatus\n  }\n}"

  public var owner: String
  public var title: String
  public var taskStatus: String
  public var description: String

  public init(owner: String, title: String, taskStatus: String, description: String) {
    self.owner = owner
    self.title = title
    self.taskStatus = taskStatus
    self.description = description
  }

  public var variables: GraphQLMap? {
    return ["owner": owner, "title": title, "taskStatus": taskStatus, "description": description]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("createTask", arguments: ["owner": GraphQLVariable("owner"), "title": GraphQLVariable("title"), "taskStatus": GraphQLVariable("taskStatus"), "description": GraphQLVariable("description")], type: .object(CreateTask.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(createTask: CreateTask? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "createTask": createTask.flatMap { $0.snapshot }])
    }

    /// In this example, only users in the ManagerGroup can create tasks
    public var createTask: CreateTask? {
      get {
        return (snapshot["createTask"] as? Snapshot).flatMap { CreateTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "createTask")
      }
    }

    public struct CreateTask: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("owner", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskStatus", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, owner: String, title: String, description: String, taskStatus: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "id": id, "owner": owner, "title": title, "description": description, "taskStatus": taskStatus])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var owner: String {
        get {
          return snapshot["owner"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var taskStatus: String? {
        get {
          return snapshot["taskStatus"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskStatus")
        }
      }
    }
  }
}

public final class UpdateTaskStatusMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateTaskStatus($id: ID!, $taskStatus: String!) {\n  updateTaskStatus(id: $id, taskStatus: $taskStatus) {\n    __typename\n    id\n    owner\n    title\n    description\n    taskStatus\n  }\n}"

  public var id: GraphQLID
  public var taskStatus: String

  public init(id: GraphQLID, taskStatus: String) {
    self.id = id
    self.taskStatus = taskStatus
  }

  public var variables: GraphQLMap? {
    return ["id": id, "taskStatus": taskStatus]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateTaskStatus", arguments: ["id": GraphQLVariable("id"), "taskStatus": GraphQLVariable("taskStatus")], type: .object(UpdateTaskStatus.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateTaskStatus: UpdateTaskStatus? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateTaskStatus": updateTaskStatus.flatMap { $0.snapshot }])
    }

    /// Both Employees and Managers can update a task's status
    public var updateTaskStatus: UpdateTaskStatus? {
      get {
        return (snapshot["updateTaskStatus"] as? Snapshot).flatMap { UpdateTaskStatus(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateTaskStatus")
      }
    }

    public struct UpdateTaskStatus: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("owner", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskStatus", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, owner: String, title: String, description: String, taskStatus: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "id": id, "owner": owner, "title": title, "description": description, "taskStatus": taskStatus])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var owner: String {
        get {
          return snapshot["owner"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var taskStatus: String? {
        get {
          return snapshot["taskStatus"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskStatus")
        }
      }
    }
  }
}

public final class UpdateTaskBodyMutation: GraphQLMutation {
  public static let operationString =
    "mutation UpdateTaskBody($id: ID!, $title: String!, $description: String!) {\n  updateTaskBody(id: $id, title: $title, description: $description) {\n    __typename\n    id\n    owner\n    title\n    description\n    taskStatus\n  }\n}"

  public var id: GraphQLID
  public var title: String
  public var description: String

  public init(id: GraphQLID, title: String, description: String) {
    self.id = id
    self.title = title
    self.description = description
  }

  public var variables: GraphQLMap? {
    return ["id": id, "title": title, "description": description]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Mutation"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("updateTaskBody", arguments: ["id": GraphQLVariable("id"), "title": GraphQLVariable("title"), "description": GraphQLVariable("description")], type: .object(UpdateTaskBody.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(updateTaskBody: UpdateTaskBody? = nil) {
      self.init(snapshot: ["__typename": "Mutation", "updateTaskBody": updateTaskBody.flatMap { $0.snapshot }])
    }

    public var updateTaskBody: UpdateTaskBody? {
      get {
        return (snapshot["updateTaskBody"] as? Snapshot).flatMap { UpdateTaskBody(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "updateTaskBody")
      }
    }

    public struct UpdateTaskBody: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("owner", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskStatus", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, owner: String, title: String, description: String, taskStatus: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "id": id, "owner": owner, "title": title, "description": description, "taskStatus": taskStatus])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var owner: String {
        get {
          return snapshot["owner"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var taskStatus: String? {
        get {
          return snapshot["taskStatus"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskStatus")
        }
      }
    }
  }
}

public final class GetTaskQuery: GraphQLQuery {
  public static let operationString =
    "query GetTask($id: ID!) {\n  getTask(id: $id) {\n    __typename\n    id\n    owner\n    title\n    description\n    taskStatus\n  }\n}"

  public var id: GraphQLID

  public init(id: GraphQLID) {
    self.id = id
  }

  public var variables: GraphQLMap? {
    return ["id": id]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("getTask", arguments: ["id": GraphQLVariable("id")], type: .object(GetTask.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(getTask: GetTask? = nil) {
      self.init(snapshot: ["__typename": "Query", "getTask": getTask.flatMap { $0.snapshot }])
    }

    /// Users belonging to both EmployeesGroup and ManagerGroup can read a particular task
    public var getTask: GetTask? {
      get {
        return (snapshot["getTask"] as? Snapshot).flatMap { GetTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "getTask")
      }
    }

    public struct GetTask: GraphQLSelectionSet {
      public static let possibleTypes = ["Task"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("owner", type: .nonNull(.scalar(String.self))),
        GraphQLField("title", type: .nonNull(.scalar(String.self))),
        GraphQLField("description", type: .nonNull(.scalar(String.self))),
        GraphQLField("taskStatus", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(id: GraphQLID, owner: String, title: String, description: String, taskStatus: String? = nil) {
        self.init(snapshot: ["__typename": "Task", "id": id, "owner": owner, "title": title, "description": description, "taskStatus": taskStatus])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var id: GraphQLID {
        get {
          return snapshot["id"]! as! GraphQLID
        }
        set {
          snapshot.updateValue(newValue, forKey: "id")
        }
      }

      public var owner: String {
        get {
          return snapshot["owner"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "owner")
        }
      }

      public var title: String {
        get {
          return snapshot["title"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "title")
        }
      }

      public var description: String {
        get {
          return snapshot["description"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "description")
        }
      }

      public var taskStatus: String? {
        get {
          return snapshot["taskStatus"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "taskStatus")
        }
      }
    }
  }
}

public final class AllTasksQuery: GraphQLQuery {
  public static let operationString =
    "query AllTasks($nextToken: String) {\n  allTasks(nextToken: $nextToken) {\n    __typename\n    items {\n      __typename\n      id\n      owner\n      title\n      description\n      taskStatus\n    }\n    nextToken\n  }\n}"

  public var nextToken: String?

  public init(nextToken: String? = nil) {
    self.nextToken = nextToken
  }

  public var variables: GraphQLMap? {
    return ["nextToken": nextToken]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("allTasks", arguments: ["nextToken": GraphQLVariable("nextToken")], type: .object(AllTask.selections)),
    ]

    public var snapshot: Snapshot

    public init(snapshot: Snapshot) {
      self.snapshot = snapshot
    }

    public init(allTasks: AllTask? = nil) {
      self.init(snapshot: ["__typename": "Query", "allTasks": allTasks.flatMap { $0.snapshot }])
    }

    /// Only Managers can list all the Tasks
    public var allTasks: AllTask? {
      get {
        return (snapshot["allTasks"] as? Snapshot).flatMap { AllTask(snapshot: $0) }
      }
      set {
        snapshot.updateValue(newValue?.snapshot, forKey: "allTasks")
      }
    }

    public struct AllTask: GraphQLSelectionSet {
      public static let possibleTypes = ["TaskConnection"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("items", type: .list(.object(Item.selections))),
        GraphQLField("nextToken", type: .scalar(String.self)),
      ]

      public var snapshot: Snapshot

      public init(snapshot: Snapshot) {
        self.snapshot = snapshot
      }

      public init(items: [Item?]? = nil, nextToken: String? = nil) {
        self.init(snapshot: ["__typename": "TaskConnection", "items": items.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, "nextToken": nextToken])
      }

      public var __typename: String {
        get {
          return snapshot["__typename"]! as! String
        }
        set {
          snapshot.updateValue(newValue, forKey: "__typename")
        }
      }

      public var items: [Item?]? {
        get {
          return (snapshot["items"] as? [Snapshot?]).flatMap { $0.map { $0.flatMap { Item(snapshot: $0) } } }
        }
        set {
          snapshot.updateValue(newValue.flatMap { $0.map { $0.flatMap { $0.snapshot } } }, forKey: "items")
        }
      }

      public var nextToken: String? {
        get {
          return snapshot["nextToken"] as? String
        }
        set {
          snapshot.updateValue(newValue, forKey: "nextToken")
        }
      }

      public struct Item: GraphQLSelectionSet {
        public static let possibleTypes = ["Task"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("owner", type: .nonNull(.scalar(String.self))),
          GraphQLField("title", type: .nonNull(.scalar(String.self))),
          GraphQLField("description", type: .nonNull(.scalar(String.self))),
          GraphQLField("taskStatus", type: .scalar(String.self)),
        ]

        public var snapshot: Snapshot

        public init(snapshot: Snapshot) {
          self.snapshot = snapshot
        }

        public init(id: GraphQLID, owner: String, title: String, description: String, taskStatus: String? = nil) {
          self.init(snapshot: ["__typename": "Task", "id": id, "owner": owner, "title": title, "description": description, "taskStatus": taskStatus])
        }

        public var __typename: String {
          get {
            return snapshot["__typename"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "__typename")
          }
        }

        public var id: GraphQLID {
          get {
            return snapshot["id"]! as! GraphQLID
          }
          set {
            snapshot.updateValue(newValue, forKey: "id")
          }
        }

        public var owner: String {
          get {
            return snapshot["owner"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "owner")
          }
        }

        public var title: String {
          get {
            return snapshot["title"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "title")
          }
        }

        public var description: String {
          get {
            return snapshot["description"]! as! String
          }
          set {
            snapshot.updateValue(newValue, forKey: "description")
          }
        }

        public var taskStatus: String? {
          get {
            return snapshot["taskStatus"] as? String
          }
          set {
            snapshot.updateValue(newValue, forKey: "taskStatus")
          }
        }
      }
    }
  }
}
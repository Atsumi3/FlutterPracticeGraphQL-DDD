String readRepositories(String userName, int num) {
  return """
  query { 
    search(type: REPOSITORY, query:"user:$userName", last:$num) {
      nodes {
        ... on Repository {
      	  name
      	  stargazerCount
        }
      }
    }
  }
""";
}

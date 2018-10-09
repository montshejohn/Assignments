import addTestData from "../actions/test";

function addingTestData(state = [], action) {
  switch (action.type) {
      case addTestData:
      return [...state,action.text]
  }
}

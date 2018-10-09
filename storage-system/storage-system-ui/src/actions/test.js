export const ADD_TO_DO = "add to do ";
export const PLUS_TO_DO = "plus to do ";

export function addTestData(text) {
  return {
    type: ADD_TO_DO,
    text
  };
}

export function plusTextData(text) {
  return {
    type: PLUS_TO_DO,
    text
  };
}

//  Teller Machine in this exercise we will learn how to loop through an array of objects and how to manipulate those objects.

//  Bellow is an object with three methods inside of it.

//     use the information you learned from freecodecamp to  add  functionality

//User stories

// 1. I can add a user to the list by passing in an object with a name and pin

// 2. I can deposit an amount by passing in an object with my pin and amount to deposit

// 3. I should see a message after a deposit saying "N(amount) has been to deposited to my account(username)"

// 4. I can withdraw from an account by passing in a pin and an amount to withdraw

// 5. I should see a message after every successful withdrawal saying n amount has been credited from my account(username)

// 6. The user should not be allowed to withdraw an amount greater than the user's available balance instead the user should see

//a message that says "Insufficient funds"

// 7. The user should not be allowed to deposit or withdraw if the pin is incorrect

//hints and keywords to look out for

//parseint

//array.map

// ES6 spread operator

// splice

const tellerMachine = {
  listOfUsers: [],

  addUser(users) {
    console.log(this.listOfUsers);

    this.listOfUsers.push(); // append (add) a default balance of 0.00 to every user object and append it to the the listOfusers.

    return this.listOfUsers;
  },

  depositIntoUserAccount({ pin, amount }) {
    console.log(this.listOfUsers);
  },

  withDrawFromUserAccount({ pin, amount }) {
    console.log(this.listOfUsers);
  }
};
//for testing
tellerMachine.addUser([
  { name: "Sam", pin: "1234" },

  { name: "Mary", pin: "0000" },

  { name: "Stephen", pin: "1223" },

  { name: "Lindiwe", pin: "0001" }
]);

tellerMachine.depositIntoUserAccount({ amount: 1233, pin: 1234 });

tellerMachine.withDrawFromUserAccount({ amount: 1283, pin: 1234 });


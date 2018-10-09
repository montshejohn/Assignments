import React, { Component } from "react";
import "./App.css";
import Form from "./components/form";

class App extends Component {
  constructor(props, context) {
    super(props, context);
    this.state = {
      show: true
    };
  }
  componentDidMount() {
    setTimeout(() => {
      this.setState({ show: false });
      console.log("true");
    }, 3000);
  }
  render() {
    const landing = (
      <div className="App">
        <header className="App-header">
          <h1>Hi there welcome to storage pro</h1>
        </header>
      </div>
    );
    return this.state.show ? landing : <Form />;
  }
}

export default App;

import React, { Component } from "react";
import "../App.css";

export default class Form extends Component {
  constructor(props) {
    super(props);
    this.state = {};
  }
  handlesChanges(e) {
    console.log(e);
  }
  render() {
    return (
      <div className="App">
        <form>
          <div className="setIt">
            <label>
              business Name
              <input type="text" onChange={e => this.handlesChanges(e)} />
              contact Number{" "}
              <input type="text" onChange={e => this.handlesChanges(e)} />
              contact Name{" "}
              <input type="text" onChange={e => this.handlesChanges(e)} />
              contact Email{" "}
              <input type="text" onChange={e => this.handlesChanges(e)} />
            </label>
          </div>

          <div className="setIt">
            <label>
              Location <br />
              region
              <input type="text" onChange={e => this.handlesChanges(e)} />
              city
              <input type="text" onChange={e => this.handlesChanges(e)} />
              street name
              <input type="text" onChange={e => this.handlesChanges(e)} />
              province
              <input type="text" onChange={e => this.handlesChanges(e)} />
            </label>
          </div>

          <div className="setIt">
            Blocks number of blocks
            <label>
              <input type="number" onChange={e => this.handlesChanges(e)} />
            </label>
          </div>

          <div className="setIt">
            <label>
              Unit Name
              <input type="text" onChange={e => this.handlesChanges(e)} />
              Unit Type
              <input type="text" onChange={e => this.handlesChanges(e)} />
              Block Name
              <input type="text" onChange={e => this.handlesChanges(e)} />
            </label>
            <label>
              length meters
              <input type="text" onChange={e => this.handlesChanges(e)} />
              height meters
              <input type="text" onChange={e => this.handlesChanges(e)} />
              width meters
              <input type="text" onChange={e => this.handlesChanges(e)} />
            </label>
          </div>
        </form>
      </div>
    );
  }
}

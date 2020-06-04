import React from 'react';
import { Link } from 'react-router-dom';

const NavBar = props => {
  const sessionLinks = () => (
    <div className="outermost-navbar-div">
      <nav className="login-signup">
        <Link to="/login">LOGIN</Link>
        <Link to="/signup">SIGN UP</Link>
      </nav>
    </div>
  );
  const personalNavBar = () => (
    <div className="outermost-navbar-div">
      <hgroup className="header-group">
        <div>
          <h2 className="header-name"> (future drop-down) {props.currentUser.username}</h2>
          <button className="header-button" onClick={props.logout}>Log Out</button>
        </div>
      </hgroup>
    </div>
  );

  return props.currentUser ? personalNavBar() : sessionLinks();
};

////////////

// class NavBar extends React.Component {

//   componentWillUnmount(){
//     return this.props.currentUser = null;
//   };

//   sessionLinks(){
//     return (
//       <nav className="login-signup">
//         <Link to="/login">LOGIN</Link>
//         <Link to="/signup">SIGN UP</Link>
//       </nav>
//     )
//   };

//   personalNavBar() {
//     return (
//       <hgroup className="header-group">
//         <div>
//           <h2 className="header-name"> (future drop-down) {this.props.currentUser.username}</h2>
//           <button className="header-button" onClick={this.props.logout}>Log Out</button>
//         </div>
//       </hgroup>
//     )
//   };

//   render() {
//     return (
//       <div>
//         {this.props.currentUser ? this.personalNavBar() : this.sessionLinks()}
//       </div>
//     )
//   };


// };

export default NavBar;

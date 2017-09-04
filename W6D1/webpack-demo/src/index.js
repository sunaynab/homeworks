  import _ from "lodash";
  import './style.css';
  import Plane from './noun_688435_cc.png';

  function component() {
    var element = document.createElement('div');

   // Lodash, currently included via a script, is required for this line to work
   // Lodash, now imported by this script
    element.innerHTML = _.join(['Hello', 'webpack'], ' ');
    element.classList.add('hello');

    var myIcon = new Image();
    myIcon.src = Plane;

    element.appendChild(myIcon);
    return element;
  }

  document.body.appendChild(component());

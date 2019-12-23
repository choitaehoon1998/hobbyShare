import '../../../css/custom.css';
 
import React from 'react';
import ReactDOM from 'react-dom';

class header extends React.Component {
 
    render() {
        return <div className="header">메인 페이지</div>;
    }
 
}
 
ReactDOM.render(<header/>, document.getElementById('root')); 
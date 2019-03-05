import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';
// import confirm from 'react-confirm';
import config from '../config';

class UserRow extends Component {    
    constructor(props) {
        super(props);
        this.handleDelete = this.handleDelete.bind(this);
    }

    handleDelete(e) {        
        e.preventDefault();
        if(!window.confirm('Are your sure you want to delete this item?')){
            return false;
        }
        let url = config.API_SERVER_URL + 'users/' + this.props.obj.id;
        //console.log('test function');
        axios.delete(url).then(response => {
            this.props.deleteRow(this.props.index);
          }            
        ).catch(function(error){
            console.log(error);
        });
    }
       
    render() {
        return (
           <tr>
               <td>{this.props.obj.id}</td>
               <td>{this.props.obj.name}</td>
               <td>{this.props.obj.email}</td>
               <td><Link className='btn btn-primary' to={'/users/edit/' + this.props.obj.id}>Edit</Link></td>
               <td><button className='btn btn-danger' onClick={this.handleDelete}>Delete</button></td>
           </tr>
        );
    }
}

export default UserRow;
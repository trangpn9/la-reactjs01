import React, { Component } from 'react';
import axios from 'axios';
import { Link } from 'react-router-dom';
import UserRow from './UserRow';
import config from '../config';

const URL_SERVER = config.API_SERVER_URL;

class UserList extends Component {    
    constructor(props) {
        super(props);
        this.state = { users: [] };
        this.fetchRows = this.fetchRows.bind(this);
    }

    componentDidMount() {
        axios.get(URL_SERVER + 'users')
        .then(response => {
            this.setState({ users: response.data })
            // function (response) {
            // console.log(response.data);
        })
        .catch(function (error) {
            console.log(error);
        });
    }

    fetchRows() {
        if(this.state.users instanceof Array){
            return this.state.users.map( (object,i) => {
                return (<UserRow obj={object} key={i} index={i} deleteRow={this.deleteRow.bind(this)} />)
            } );
        }
    }

    deleteRow(key) {
        const newUsers = this.state.users.slice();
        newUsers.splice(key, 1);        
        this.setState({
            users: newUsers
        });
    }

    render() {        
        return (
            <div className="container">
                <h1 className='titleMain'>Users List</h1>                                
                <div className='clearfix'>
                <Link className='btn btn-success pull-right' to='/users/create'>Add User</Link>
                </div><br />
                <table className='table table-hover'>
                <thead>
                    <tr>
                        <td>ID</td>
                        <td>Name</td>
                        <td>Email</td>
                        <td colSpan={2}>Actions</td>
                    </tr>
                </thead>
                <tbody>     
                    {this.fetchRows()}                                                      
                </tbody>
                </table>             
            </div>
        );
    }
}

export default UserList;
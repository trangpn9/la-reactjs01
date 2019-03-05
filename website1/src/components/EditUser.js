import React, { Component } from 'react';
import axios from 'axios';
import config from '../config';

const URL_SERVER = config.API_SERVER_URL;

class EditUser extends Component {
    constructor(props) {
        super(props);
        this.state = {
            name:'',
            email:'',
            password:''
        };
        this.handleName = this.handleName.bind(this);
        this.handleEmail = this.handleEmail.bind(this);
        this.handlePassword = this.handlePassword.bind(this);
        this.handleSubmit = this.handleSubmit.bind(this);
    }

    componentDidMount() {
        let url = URL_SERVER + 'users/' + this.props.match.params.id + '/edit';
        axios.get(url).then(
            response => {
                this.setState(response.data);
                console.log(response.data);
            }
        ).catch(function(error){
            console.log(error);
        });
    }

    handleName(e) {
        this.setState({
            name: e.target.value
        });
    }

    handleEmail(e) {
        this.setState({
            email: e.target.value
        });
    }
    
    handlePassword(e) {
        this.setState({
            password: e.target.value
        });
    }

    handleSubmit(e) {
        e.preventDefault();
        let url = URL_SERVER + 'users/' + this.props.match.params.id;
        const data = {
            name: this.state.name,
            email: this.state.email,
            password: this.state.password
        }

        axios.put(url, data).then(
            // function(data){
            //     console.log(data);
            // }
            response => {
                this.props.history.push('/users');
            }
        ).catch(
            function(error){
                console.log(error);
            }
        );
    }

    render() {        
        return (
            <div className="container">
                <h2>Page Edit User</h2>        
                <form onSubmit={this.handleSubmit}>
                    <div className='form-group'>
                        <label htmlFor='name'>Name</label>
                        <input type='text' className='form-control' id='name' placeholder='Name'
                        value={this.state.name} onChange={this.handleName} required />
                    </div>
                    <div className='form-group'>
                        <label htmlFor='email'>Email</label>
                        <input type='text' className='form-control' id='email' placeholder='Email'
                        value={this.state.email} onChange={this.handleEmail} required />
                    </div>
                    <div className='form-group'>
                        <label htmlFor='password'>Password</label>
                        <input type='password' className='form-control' id='password' placeholder='Password'
                        value={this.state.password} onChange={this.handlePassword} required />
                    </div>
                    <button type='submit' className='btn btn-primary'>Update User</button>                    
                </form>
            </div>
        );
    }
}

export default EditUser;
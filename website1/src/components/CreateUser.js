import React, { Component } from 'react';
import config from '../config';
import axios from 'axios';

const URL_SERVER = config.API_SERVER_URL;

class CreateUser extends Component {
    constructor(props) {
        super(props);
        this.state = {
            name: '',
            email: '',
            password: '',
            language: '[vn][:vn][en][:en][kr][:kr]',
        }
        this.handleChangeName = this.handleChangeName.bind(this)
        this.handleChangeEmail = this.handleChangeEmail.bind(this)
        this.handleChangePassword = this.handleChangePassword.bind(this)
        this.handleChangeLanguage = this.handleChangeLanguage.bind(this)
        
        this.handleSubmit = this.handleSubmit.bind(this)
    }
    
    handleChangeName (e) {
        this.setState({
          name: e.target.value
        })
      }
    
    handleChangeEmail (e) {
        this.setState({
            email: e.target.value
        })
    }

    handleChangePassword (e) {
        this.setState({
            password: e.target.value
        })
    }

    handleChangeLanguage (e) {
        this.setState({
            language: e.target.value
        })
    }

    handleSubmit(e){
        e.preventDefault();
        let url = URL_SERVER + 'users';
        const data = {
            name: this.state.name,
            email: this.state.email,
            password: this.state.password,
            language: this.state.language
        }
        // console.log(data);        
        axios.post(url, data).then(            
            response => {
                this.props.history.push('/users')
              }    
        ).catch(function(error){
            console.log(error);
        });

    }

    render() {
        return (
            <div className="container">
                <h2>Page Create User</h2>
                <form onSubmit={this.handleSubmit}>
                    <div className='form-group'>
                        <label htmlFor='name'>Name</label>
                        <input type='text' className='form-control' id='name' placeholder='Name'
                        value={this.state.name} onChange={this.handleChangeName} required />
                    </div>
                    <div className='form-group'>
                        <label htmlFor='email'>Email</label>
                        <input type='email' className='form-control' id='email' placeholder='Email'
                        value={this.state.email} onChange={this.handleChangeEmail} required />
                    </div>
                    <div className='form-group'>
                        <label htmlFor='password'>Password</label>
                        <input type='password' className='form-control' id='password' placeholder='Password'
                        value={this.state.password} onChange={this.handleChangePassword} required />
                    </div>
                    <div className='form-group'>
                        <label htmlFor='password'>Language</label>
                        <textarea
                            className="form-control"
                            id='language'
                            placeholder='Content put it here!'
                            aria-label="With textarea"
                            value={this.state.language}
                            onChange={this.handleChangeLanguage}
                            required>
                        </textarea>                        
                    </div>                    
                    <button type='submit' className='btn btn-primary'>Add User</button>
                </form>
            </div>
        );
    }
}

export default CreateUser;
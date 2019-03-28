import React, { Component } from 'react';
import { Link } from 'react-router-dom';
import axios from 'axios';
// import confirm from 'react-confirm';
import config from '../config';
import i18n from "i18next";

class UserRow extends Component {    
    constructor(props) {
        super(props);
        this.handleDelete = this.handleDelete.bind(this);
        this.state = {lang_str: this.props.obj.language};
    }

    componentDidMount() {
        const lg_en = /\[en\](.*)\[\:en\]/g;
        const lg_vn = /\[vn\](.*)\[\:vn\]/g;
        const lg_kr = /\[kr\](.*)\[\:kr\]/g;
        const lang_str = this.state.lang_str;

        const fn_lg_EN = lang_str.match(lg_en);
        const fn_lg_VN = lang_str.match(lg_vn);
        const fn_lg_KR = lang_str.match(lg_kr);

        const get_lg_VN = (fn_lg_VN[0]).replace('[vn]','').replace('[:vn]','');
        const get_lg_EN = (fn_lg_EN[0]).replace('[en]','').replace('[:en]','');
        const get_lg_KR = (fn_lg_KR[0]).replace('[kr]','').replace('[:kr]','');

        i18n.addResourceBundle('vn', 'namespace' + this.props.obj.index , {
            key: get_lg_VN,
          });
        i18n.addResourceBundle('en', 'namespace' + this.props.obj.index , {
            key: get_lg_EN,
        });
        i18n.addResourceBundle('kr', 'namespace' + this.props.obj.index, {
            key: get_lg_KR,
        });
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
               <td>{i18n.t('namespace' + this.props.obj.index + ':key')}</td>
               {/* <td>{this.state.lang_str}</td> */}
               <td><Link className='btn btn-primary' to={'/users/edit/' + this.props.obj.id}>Edit</Link></td>
               <td><button className='btn btn-danger' onClick={this.handleDelete}>Delete</button></td>
           </tr>
        );
    }
}

export default UserRow;
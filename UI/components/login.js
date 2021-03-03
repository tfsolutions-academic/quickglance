import {useState, useContext, useRef} from 'react';
import { useForm, Controller } from "react-hook-form";
import { Button } from 'primereact/button';
import { InputText } from 'primereact/inputtext';
import { Password } from 'primereact/password';
import { ProgressSpinner } from 'primereact/progressspinner';
import { Messages } from 'primereact/messages';
import AppContext from '../utils/appContext';

const Login = (props) => {
    const appContext = useContext(AppContext);
    const msg = useRef(null);
    const { handleSubmit, control } = useForm();
    const [isProcessing, setIsProcessing] = useState(false);

    const onSubmit = async (data) =>{
        msg && msg.current.clear();
        setIsProcessing(true);
        try{
            const result = await appContext.axiosInstance.post('/auth/local',{
                ...data
            });
            window.location.replace(process.env.NEXT_PUBLIC_auth_home_url);
            props.onSubmit();
        }catch(err){
            msg && msg.current.show([
                { severity: 'error', summary: 'SignIn Failed', detail: 'Invalid credentials...', sticky: true }
            ]);
            console.log(err);
        }
        finally{
            setIsProcessing(false);
        }
    } 

    return(
        <form onSubmit={handleSubmit(onSubmit)}>
            <div className="p-shadow-3" style={{padding:"10px"}}>
                <h3 style={{ fontWeight: 'normal' }}>Sign-In</h3>
                <hr />
                <Messages ref={msg} />
                <div style={{display:"flex", flexDirection:"row",alignItems:"center"}}>
                    <div>
                        <div className="p-field">
                            <label htmlFor="username1" className="p-d-block">Username</label>
                            <Controller     as={InputText} 
                                            name="identifier" 
                                            rules={{ required: true }} 
                                            control={control} 
                                            className="p-d-block"
                                            defaultValue="nat@proserve.com" />
                            <small id="username1-help" className="p-d-block">Enter your username.</small>
                        </div>
                        <div className="p-field">
                            <label htmlFor="password" className="p-d-block">Password</label>
                            <Controller     as={Password} 
                                            name="password" 
                                            rules={{ required: true }} 
                                            control={control} 
                                            className="p-d-block"/>
                            <small id="username1-help" className="p-d-block">Enter your password.</small>
                        </div>
                    </div>
                    {isProcessing && <ProgressSpinner/> }
                </div>
                <hr/>
                <Button type="submit" label="Save" className="p-button-success" style={{ marginRight: '.25em' }} />
                <Button type="reset" onClick={props.onCancel} label="Cancel" className="p-button-secondary" />
            </div>
        </form>
    );
}

export default Login;
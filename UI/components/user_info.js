import {useState, useRef, useContext, useEffect} from 'react';
import { Menu } from 'primereact/menu';
import { Button } from 'primereact/button';
import AppContext from '../utils/appContext';

const menuItems = [
    { label: 'My Profile', icon: 'pi pi-refresh', id: 'my_profile' },
    { separator : true },
    { label: 'Sign out', icon: 'pi pi-times', id : 'sign_out' }
]

const UserInfo = (props) => {
    const menu = useRef(null);
    const appContext = useContext(AppContext);
    const [isAuthenticated, setIsAuthenticated] = useState(false);
    const [userInfo, setUserInfo] = useState(null)

    const onMenuItemClicked = (eventargs) => {
        if (eventargs.item.id == 'sign_out'){
            window.location.replace(process.env.NEXT_PUBLIC_auth_home_url + '/logout');
        }
    }

    const metuItemsWithCallback = menuItems.map((itm)=>({...itm, command: onMenuItemClicked}));

    useEffect(async () => {
        console.log('user info refreshed')
        const _status = await appContext.isAuthenticated();
        console.log("Status", _status);
        if (_status){
            const _userInfo = await appContext.getCurrentUser();
            if (Object.keys(_userInfo).length > 0){
                setIsAuthenticated(true);
                setUserInfo({..._userInfo});
            }
        }
    }, [])

    if (!isAuthenticated || !userInfo){
        return null;
    }

    console.log('userInfo', userInfo);

    return(
        <>
            <Menu model={metuItemsWithCallback} popup ref={menu} />
            <Button label={`Welcome ${userInfo.username}`} icon="pi pi-bars" onClick={(event) => menu && menu.current.toggle(event)}/>
        </>
    );
}

export default UserInfo;
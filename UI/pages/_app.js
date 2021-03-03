import 'primereact/resources/themes/saga-blue/theme.css';
import 'primereact/resources/primereact.min.css';
import 'primeicons/primeicons.css';
import 'primeflex/primeflex.css';
import '../styles/globals.css';
import {AppContextProvider, AppContextValue} from '../utils/appContext';

function MyApp({ Component, pageProps }) {
  return (
    <AppContextProvider value={{...AppContextValue}}>
      <Component {...pageProps} />
    </AppContextProvider>
  )
}

export default MyApp
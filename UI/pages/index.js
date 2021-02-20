import Head from 'next/head';
import styles from '../styles/Home.module.css';
import { Card } from 'primereact/card';
import { Menubar } from 'primereact/menubar';
import { InputText } from 'primereact/inputtext';
import { Splitter, SplitterPanel } from 'primereact/splitter';

const start = <img alt="logo" src="/images/logo.png"  height="60" className="p-mr-2"></img>;
const end = <InputText placeholder="Search" type="text" />;

export default function Home() {
  return (
    <Card style={{height:'100vh'}}>
      <Head>
        <title>Proserve</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <Menubar model={[]} start={start} end={end} />
      <Splitter style={{height:'85vh', padding:'0.5rem'}}>
        <SplitterPanel size={70} minSize={70}>
            Panel 1
        </SplitterPanel>
        <SplitterPanel size={30} minSize={30}>
            Panel 2
        </SplitterPanel>
      </Splitter>
    </Card>
  )
}

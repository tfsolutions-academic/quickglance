import {useState} from 'react';
import Head from 'next/head';
import styles from '../styles/Home.module.css';
import { Card } from 'primereact/card';
import { Menubar } from 'primereact/menubar';
import { InputText } from 'primereact/inputtext';
import { Splitter, SplitterPanel } from 'primereact/splitter';
import { Calendar } from 'primereact/calendar';
import { DataTable } from 'primereact/datatable';
import { Column } from 'primereact/column';
import { Sidebar } from 'primereact/sidebar';
import { Button } from 'primereact/button';
import EventsByDate from '../components/events_by_date';
import Login from '../components/login';
import UserInfo from '../components/user_info';


const start = <img alt="logo" src="/images/logo.png"  height="50" className="p-mr-2"></img>;
const end = <UserInfo />;

const menuItems = [
  {
    label:'My Appointments',
    icon:'pi pi-fw pi-power-off'
  },
  {
    label:'Book an Appointment',
    icon:'pi pi-fw pi-power-off'
  }
];

const products = [
  {"id": "1000","code": "f230fh0g3","name": "Bamboo Watch","description": "Product Description","image": "bamboo-watch.jpg","price": 65,"category": "Accessories","quantity": 24,"inventoryStatus": "INSTOCK","rating": 5},
  {"id": "1001","code": "nvklal433","name": "Black Watch","description": "Product Description","image": "black-watch.jpg","price": 72,"category": "Accessories","quantity": 61,"inventoryStatus": "INSTOCK","rating": 4},
  {"id": "1002","code": "zz21cz3c1","name": "Blue Band","description": "Product Description","image": "blue-band.jpg","price": 79,"category": "Fitness","quantity": 2,"inventoryStatus": "LOWSTOCK","rating": 3},
  {"id": "1003","code": "244wgerg2","name": "Blue T-Shirt","description": "Product Description","image": "blue-t-shirt.jpg","price": 29,"category": "Clothing","quantity": 25,"inventoryStatus": "INSTOCK","rating": 5},
  {"id": "1004","code": "h456wer53","name": "Bracelet","description": "Product Description","image": "bracelet.jpg","price": 15,"category": "Accessories","quantity": 73,"inventoryStatus": "INSTOCK","rating": 4},
  {"id": "1005","code": "av2231fwg","name": "Brown Purse","description": "Product Description","image": "brown-purse.jpg","price": 120,"category": "Accessories","quantity": 0,"inventoryStatus": "OUTOFSTOCK","rating": 4},
  {"id": "1006","code": "bib36pfvm","name": "Chakra Bracelet","description": "Product Description","image": "chakra-bracelet.jpg","price": 32,"category": "Accessories","quantity": 5,"inventoryStatus": "LOWSTOCK","rating": 3},
  {"id": "1007","code": "mbvjkgip5","name": "Galaxy Earrings","description": "Product Description","image": "galaxy-earrings.jpg","price": 34,"category": "Accessories","quantity": 23,"inventoryStatus": "INSTOCK","rating": 5},
  {"id": "1008","code": "vbb124btr","name": "Game Controller","description": "Product Description","image": "game-controller.jpg","price": 99,"category": "Electronics","quantity": 2,"inventoryStatus": "LOWSTOCK","rating": 4},
  {"id": "1009","code": "cm230f032","name": "Gaming Set","description": "Product Description","image": "gaming-set.jpg","price": 299,"category": "Electronics","quantity": 63,"inventoryStatus": "INSTOCK","rating": 3}
];

export default function Home() {
  const [visibleRight, setVisibleRight] = useState(false);

  const onMenuItemClicked = (eventargs) => {
    console.log(eventargs);
    setVisibleRight(true);
  }

  const dateTemplate = (date) => {
    if (date.day > 10 && date.day < 15) {
        return (
            <div style={{backgroundColor: '#1dcbb3', color: '#ffffff', fontWeight: 'bold', borderRadius: '50%', width: '2em', height: '2em', lineHeight: '2em', padding: 0}}>{date.day}</div>
        );
    }
    else {
        return date.day;
    }
}

  const metuItemsWithCallback = menuItems.map((itm)=>({...itm, command: onMenuItemClicked}));

  return (
    <Card style={{height:'100vh', backgroundColor:'dimgrey'}}>
      <Head>
        <title>QuickGlance - Doctor Appointment Service</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>
      <Menubar model={metuItemsWithCallback} start={start} end={end} onClick={()=>{setVisibleRight(true)}} />
      <Sidebar className="p-sidebar-md" visible={visibleRight} showCloseIcon={false} position="right" dismissable={false} baseZIndex={1000000} onHide={() => setVisibleRight(false)}>
          <Login onSubmit={()=>{setVisibleRight(false)}} onCancel={()=>{setVisibleRight(false)}} />
      </Sidebar>
      <Splitter style={{height:'85vh', padding:'0.5rem'}}>
        <SplitterPanel size={85} minSize={85}>
            <EventsByDate />
        </SplitterPanel>
        <SplitterPanel size={15} minSize={15} style={{display:"flex",flexDirection:"column"}}>
          <Calendar value={new Date()} inline monthNavigator yearNavigator yearRange="2010:2030" showButtonBar dateTemplate={dateTemplate} />
          <DataTable value={products} header="Past Visit at glance...." className="p-datatable-sm" scrollable scrollHeight="200px" >
                    <Column field="code" header="Code"></Column>
                    <Column field="name" header="Name"></Column>
                    <Column field="category" header="Category"></Column>
                    <Column field="quantity" header="Quantity"></Column>
                </DataTable>
        </SplitterPanel>
      </Splitter>
    </Card>
  )
}



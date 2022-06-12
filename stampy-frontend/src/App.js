import { useState } from 'react';
import './App.css';
import Create from './Create';

function App() {


  const [stampsList, setStampsList] = useState({})


  async function getStamps(){
    const response = await fetch(`http://localhost:3000/stamps`)
    const stamps = await response.json()
    setStampsList(stamps)
  }

  console.log('stampsList', stampsList)

  return (
    <div className="App">
      <button onClick={getStamps}>get em</button>

      <Create />
    </div>
  );
}

export default App;

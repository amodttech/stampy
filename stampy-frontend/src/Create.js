import React, { useState, useRef } from 'react'
import { FileDrop } from 'react-file-drop'



function Create() {
    const [title, setTitle] = useState('title');
    const [year, setYear] = useState('year');
    const [description, setDescription] = useState('description');
    const fileInputRef = useRef(null);
  
    function handleSubmit(event) {
      event.preventDefault();
      console.log('title:', title);
      console.log('year:', year);
      console.log('description:', description);

      const formData = new FormData()
      formData.append('title', title)
      formData.append('year', parseInt(year))
      formData.append('description', description)
      formData.append('image', fileInputRef)

      fetch(`http://localhost:3000/stamps`, {
        method: 'POST',
        body: formData
      })
      .then(res => res.json())
      .then(data => console.log('data', data))
    }

    const onFileInputChange = (event) => {
        const { files } = event.target;
        // do something with your files...
      }

    // const onTargetClick = () => {
    // fileInputRef.current.click()
    // }

    const styles = { border: '1px solid black', color: 'black', padding: 20 };
    
    return (
      <form onSubmit={handleSubmit}>
        <div>
          <label htmlFor="title">title</label>
          <input
            id="title"
            type="text"
            value={title}
            onChange={(e) => setTitle(e.target.value)}
          />
        </div>
        <div>
          <label htmlFor="year">year</label>
          <input
            id="year"
            type="year"
            value={year}
            onChange={(e) => setYear(e.target.value)}
          />
        </div>
        <div>
          <label htmlFor="description">description</label>
          <textarea
            id="description"
            value={description}
            onChange={(e) => setDescription(e.target.value)}
          />
        </div>
        <input
            onChange={onFileInputChange}
            ref={fileInputRef}
            type="file"
            classtitle="hidden"
            />
        {/* <div style={styles}>
            <FileDrop
                onTargetClick={onTargetClick}
                onFrameDragEnter={(event) => console.log('onFrameDragEnter', event)}
                onFrameDragLeave={(event) => console.log('onFrameDragLeave', event)}
                onFrameDrop={(event) => console.log('onFrameDrop', event)}
                onDragOver={(event) => console.log('onDragOver', event)}
                onDragLeave={(event) => console.log('onDragLeave', event)}
                onDrop={(files, event) => console.log('onDrop!', files, event)}
            >
            Drag Image Here to Upload
            </FileDrop>
        </div> */}

        <button onClick={handleSubmit} type="submit">Submit</button>
      </form>
  )
}

export default Create
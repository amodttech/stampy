import React from 'react'

function Create() {
    const [name, setName] = React.useState('stamp');
    const [year, setYear] = React.useState('year');
    const [description, setDescription] = React.useState('description');
  
    function handleSubmit(event) {
      event.preventDefault();
      console.log('name:', name);
      console.log('year:', year);
      console.log('description:', description);
    }
  
    return (
      <form onSubmit={handleSubmit}>
        <div>
          <label htmlFor="name">Name</label>
          <input
            id="name"
            type="text"
            value={name}
            onChange={(e) => setName(e.target.value)}
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
        <button type="submit">Submit</button>
      </form>
  )
}

export default Create